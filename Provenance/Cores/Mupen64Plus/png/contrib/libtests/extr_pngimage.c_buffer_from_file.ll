; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_from_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, %struct.buffer_list*, %struct.buffer_list }
%struct.buffer_list = type { %struct.buffer_list*, i64 }

@MEMORY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, i32*)* @buffer_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_from_file(%struct.buffer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.buffer_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.buffer*, %struct.buffer** %4, align 8
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 2
  store %struct.buffer_list* %10, %struct.buffer_list** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %75, %2
  %12 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @fread(i64 %16, i32 1, i32 %19, i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %11
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %28, 8
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 8
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i64 0, i64* %7, align 8
  %35 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %36 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %35, i32 0, i32 0
  %37 = load %struct.buffer_list*, %struct.buffer_list** %36, align 8
  %38 = icmp eq %struct.buffer_list* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %41 = call %struct.buffer_list* @buffer_extend(%struct.buffer_list* %40)
  store %struct.buffer_list* %41, %struct.buffer_list** %6, align 8
  %42 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %43 = icmp eq %struct.buffer_list* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MEMORY, align 4
  store i32 %45, i32* %3, align 4
  br label %76

46:                                               ; preds = %39
  br label %51

47:                                               ; preds = %30
  %48 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %49 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %48, i32 0, i32 0
  %50 = load %struct.buffer_list*, %struct.buffer_list** %49, align 8
  store %struct.buffer_list* %50, %struct.buffer_list** %6, align 8
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %24
  br label %75

53:                                               ; preds = %11
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @feof(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %59 = load %struct.buffer*, %struct.buffer** %4, align 8
  %60 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 1
  store %struct.buffer_list* %58, %struct.buffer_list** %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.buffer*, %struct.buffer** %4, align 8
  %63 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %76

64:                                               ; preds = %53
  %65 = load i64, i64* @errno, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @ERANGE, align 4
  %69 = sext i32 %68 to i64
  br label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @errno, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %52
  br label %11

76:                                               ; preds = %72, %57, %44
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @fread(i64, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.buffer_list* @buffer_extend(%struct.buffer_list*) #1

declare dso_local i64 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
