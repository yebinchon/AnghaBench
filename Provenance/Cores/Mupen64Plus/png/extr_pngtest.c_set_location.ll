; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtest.c_set_location.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtest.c_set_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_chunk_data = type { i32*, i32* }

@after_IDAT = common dso_local global i32 0, align 4
@PNG_INFO_PLTE = common dso_local global i32 0, align 4
@before_IDAT = common dso_local global i32 0, align 4
@before_PLTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.user_chunk_data*, i32)* @set_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_location(i32 %0, %struct.user_chunk_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_chunk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.user_chunk_data* %1, %struct.user_chunk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %10 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %19 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %73

27:                                               ; preds = %17
  %28 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %29 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @after_IDAT, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %39 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @PNG_INFO_PLTE, align 4
  %42 = call i64 @png_get_valid(i32 %37, i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @before_IDAT, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @before_PLTE, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %55 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %63 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  br label %72

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.user_chunk_data*, %struct.user_chunk_data** %6, align 8
  %69 = getelementptr inbounds %struct.user_chunk_data, %struct.user_chunk_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %60
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @png_get_valid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
