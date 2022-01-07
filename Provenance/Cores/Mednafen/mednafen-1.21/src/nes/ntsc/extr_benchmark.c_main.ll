; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_benchmark.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_benchmark.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_t = type { i32**, i32*, i32 }

@in_height = common dso_local global i32 0, align 4
@in_width = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Timing nes_ntsc...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.data_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i64 @malloc(i32 24)
  %6 = inttoptr i64 %5 to %struct.data_t*
  store %struct.data_t* %6, %struct.data_t** %2, align 8
  %7 = load %struct.data_t*, %struct.data_t** %2, align 8
  %8 = icmp ne %struct.data_t* %7, null
  br i1 %8, label %9, label %70

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %37, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @in_height, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @in_width, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = call i32 (...) @rand()
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 31
  %23 = load %struct.data_t*, %struct.data_t** %2, align 8
  %24 = getelementptr inbounds %struct.data_t, %struct.data_t* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %22, i32* %32, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %10

40:                                               ; preds = %10
  %41 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fflush(i32 %42)
  %44 = load %struct.data_t*, %struct.data_t** %2, align 8
  %45 = getelementptr inbounds %struct.data_t, %struct.data_t* %44, i32 0, i32 2
  %46 = call i32 @nes_ntsc_init(i32* %45, i32 0)
  br label %47

47:                                               ; preds = %50, %40
  %48 = call i64 (...) @time_blitter()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.data_t*, %struct.data_t** %2, align 8
  %52 = getelementptr inbounds %struct.data_t, %struct.data_t* %51, i32 0, i32 2
  %53 = load %struct.data_t*, %struct.data_t** %2, align 8
  %54 = getelementptr inbounds %struct.data_t, %struct.data_t* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @in_width, align 4
  %59 = load i32, i32* @in_width, align 4
  %60 = load i32, i32* @in_height, align 4
  %61 = load %struct.data_t*, %struct.data_t** %2, align 8
  %62 = getelementptr inbounds %struct.data_t, %struct.data_t* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nes_ntsc_blit(i32* %52, i32* %57, i32 %58, i32 0, i32 %59, i32 %60, i32 %65, i32 4)
  br label %47

67:                                               ; preds = %47
  %68 = load %struct.data_t*, %struct.data_t** %2, align 8
  %69 = call i32 @free(%struct.data_t* %68)
  br label %70

70:                                               ; preds = %67, %0
  ret i32 0
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @nes_ntsc_init(i32*, i32) #1

declare dso_local i64 @time_blitter(...) #1

declare dso_local i32 @nes_ntsc_blit(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.data_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
