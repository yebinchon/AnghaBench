; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_searchfs_inappropriate_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_searchfs_inappropriate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"System\00", align 1
@__const.vn_searchfs_inappropriate_name.bad_names = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)], align 8
@__const.vn_searchfs_inappropriate_name.bad_len = private unnamed_addr constant [1 x i32] [i32 6], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_searchfs_inappropriate_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8*], align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [1 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast ([1 x i8*]* @__const.vn_searchfs_inappropriate_name.bad_names to i8*), i64 8, i1 false)
  %10 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([1 x i32]* @__const.vn_searchfs_inappropriate_name.bad_len to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add nsw i64 %31, 1
  %33 = call i64 @strncmp(i8* %22, i8* %26, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %41

36:                                               ; preds = %21, %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %11

40:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
