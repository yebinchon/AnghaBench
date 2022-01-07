; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndwav.c_SNDWavDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndwav.c_SNDWavDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@wavefp = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SNDWavDeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDWavDeInit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i64, i64* @wavefp, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %0
  %6 = load i64, i64* @wavefp, align 8
  %7 = call i64 @ftell(i64 %6)
  store i64 %7, i64* %1, align 8
  %8 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i64, i64* @wavefp, align 8
  %10 = load i32, i32* @SEEK_SET, align 4
  %11 = call i32 @fseek(i64 %9, i32 -4, i32 %10)
  %12 = load i64, i64* %1, align 8
  %13 = sub nsw i64 %12, 4
  store i64 %13, i64* %1, align 8
  %14 = bitcast i64* %1 to i8*
  %15 = load i64, i64* @wavefp, align 8
  %16 = call i32 @ywrite(%struct.TYPE_3__* %2, i8* %14, i32 1, i32 4, i64 %15)
  %17 = load i64, i64* @wavefp, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i32 @fseek(i64 %17, i32 12, i32 %18)
  %20 = load i64, i64* %1, align 8
  %21 = sub i64 %20, 8
  store i64 %21, i64* %1, align 8
  %22 = bitcast i64* %1 to i8*
  %23 = load i64, i64* @wavefp, align 8
  %24 = call i32 @ywrite(%struct.TYPE_3__* %2, i8* %22, i32 1, i32 4, i64 %23)
  %25 = load i64, i64* @wavefp, align 8
  %26 = call i32 @fclose(i64 %25)
  br label %27

27:                                               ; preds = %5, %0
  ret void
}

declare dso_local i64 @ftell(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fseek(i64, i32, i32) #1

declare dso_local i32 @ywrite(%struct.TYPE_3__*, i8*, i32, i32, i64) #1

declare dso_local i32 @fclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
