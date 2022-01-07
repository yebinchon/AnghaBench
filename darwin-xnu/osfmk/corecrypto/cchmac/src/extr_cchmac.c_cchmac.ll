; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/cchmac/src/extr_cchmac.c_cchmac.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/cchmac/src/extr_cchmac.c_cchmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdigest_info = type { i32 }

@FIPSPOST_TRACE_EVENT = common dso_local global i32 0, align 4
@hc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cchmac(%struct.ccdigest_info* %0, i64 %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ccdigest_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ccdigest_info* %0, %struct.ccdigest_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* @FIPSPOST_TRACE_EVENT, align 4
  %14 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %15 = load i32, i32* @hc, align 4
  %16 = call i32 @cchmac_di_decl(%struct.ccdigest_info* %14, i32 %15)
  %17 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %18 = load i32, i32* @hc, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @cchmac_init(%struct.ccdigest_info* %17, i32 %18, i64 %19, i8* %20)
  %22 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %23 = load i32, i32* @hc, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @cchmac_update(%struct.ccdigest_info* %22, i32 %23, i64 %24, i8* %25)
  %27 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %28 = load i32, i32* @hc, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @cchmac_final(%struct.ccdigest_info* %27, i32 %28, i8* %29)
  %31 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %32 = load i32, i32* @hc, align 4
  %33 = call i32 @cchmac_di_clear(%struct.ccdigest_info* %31, i32 %32)
  ret void
}

declare dso_local i32 @cchmac_di_decl(%struct.ccdigest_info*, i32) #1

declare dso_local i32 @cchmac_init(%struct.ccdigest_info*, i32, i64, i8*) #1

declare dso_local i32 @cchmac_update(%struct.ccdigest_info*, i32, i64, i8*) #1

declare dso_local i32 @cchmac_final(%struct.ccdigest_info*, i32, i8*) #1

declare dso_local i32 @cchmac_di_clear(%struct.ccdigest_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
