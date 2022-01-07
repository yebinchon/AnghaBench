; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_brecover_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_brecover_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@UPL_PRECIOUS = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@UPL_WILL_MODIFY = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Failed to create UPL\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"getblk: ubc_upl_map() failed with (%d)\00", align 1
@B_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @brecover_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brecover_data(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @UBCINFOEXISTS(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %95

22:                                               ; preds = %16
  %23 = load i32, i32* @UPL_PRECIOUS, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 @buf_flags(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @B_READ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @UPL_WILL_MODIFY, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ubc_blktooff(i32 %35, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %45 = call i64 @ubc_create_upl_kernel(i32 %34, i32 %39, i32 %42, i32* %5, i32** %6, i32 %43, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @KERN_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %33
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sdiv i32 %60, %61
  %63 = call i32 @upl_valid_page(i32* %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sdiv i32 %67, %68
  %70 = call i32 @upl_dirty_page(i32* %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ubc_upl_abort(i32 %73, i32 0)
  br label %95

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = call i64 @ubc_upl_map(i32 %84, i32* %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @KERN_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i64, i64* %7, align 8
  %93 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %91, %80
  store i32 1, i32* %2, align 4
  br label %105

95:                                               ; preds = %72, %21
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @B_INVAL, align 4
  %102 = call i32 @SET(i32 %100, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = call i32 @buf_brelse(%struct.TYPE_5__* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %94
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @UBCINFOEXISTS(i32) #1

declare dso_local i32 @buf_flags(%struct.TYPE_5__*) #1

declare dso_local i64 @ubc_create_upl_kernel(i32, i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @ubc_blktooff(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @upl_dirty_page(i32*, i32) #1

declare dso_local i32 @ubc_upl_abort(i32, i32) #1

declare dso_local i64 @ubc_upl_map(i32, i32*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @buf_brelse(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
