; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_chunk.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UNEXPECTED_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"read beyond IEND\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %lu\0A\00", align 1
@png_IEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_chunk(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = load i32, i32* @UNEXPECTED_ERROR_CODE, align 4
  %20 = call i32 @stop(%struct.file* %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @type_name(i64 %31, i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %28, %21
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @crc_init_4(i64 %38)
  %40 = load %struct.file*, %struct.file** %2, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @crc_read_many(%struct.file* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %37
  %47 = load %struct.file*, %struct.file** %2, align 8
  %48 = call i32 @read_4(%struct.file* %47, i64* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @png_IEND, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load %struct.file*, %struct.file** %2, align 8
  %57 = call i32 @read_4(%struct.file* %56, i64* %7)
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = icmp sle i64 %63, 2147483647
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load %struct.file*, %struct.file** %2, align 8
  %67 = call i32 @read_4(%struct.file* %66, i64* %8)
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 12
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @chunk_type_valid(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.file*, %struct.file** %2, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 8
  store i32 %80, i32* %78, align 8
  %81 = load %struct.file*, %struct.file** %2, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @process_chunk(%struct.file* %81, i64 %82, i64 %83, i64 %84)
  br label %97

86:                                               ; preds = %72, %65
  br label %87

87:                                               ; preds = %86, %62, %55
  br label %92

88:                                               ; preds = %51
  %89 = load %struct.file*, %struct.file** %2, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @process_chunk(%struct.file* %89, i64 %90, i64 0, i64 0)
  br label %97

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93, %37
  %95 = load %struct.file*, %struct.file** %2, align 8
  %96 = call i32 @sync_stream(%struct.file* %95)
  br label %97

97:                                               ; preds = %94, %88, %76
  ret void
}

declare dso_local i32 @stop(%struct.file*, i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @type_name(i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @crc_init_4(i64) #1

declare dso_local i64 @crc_read_many(%struct.file*, i64) #1

declare dso_local i32 @read_4(%struct.file*, i64*) #1

declare dso_local i64 @chunk_type_valid(i64) #1

declare dso_local i32 @process_chunk(%struct.file*, i64, i64, i64) #1

declare dso_local i32 @sync_stream(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
