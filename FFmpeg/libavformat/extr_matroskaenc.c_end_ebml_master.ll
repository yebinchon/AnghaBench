; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_end_ebml_master.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_end_ebml_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @end_ebml_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_ebml_master(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 8
  store i32* %0, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @avio_tell(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %14, %16
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i64 @avio_seek(i32* %12, i64 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %35

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %24, %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @put_ebml_num(i32* %23, i64 %27, i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i64 @avio_seek(i32* %31, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i64 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @put_ebml_num(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
