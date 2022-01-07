; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtGetDbByMeterId.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtGetDbByMeterId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@TS_PATH_DELIMITER = common dso_local global i32 0, align 4
@dbSdb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mgmtGetDbByMeterId(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @TS_PATH_DELIMITER, align 4
  %12 = call i8* @strstr(i8* %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i32, i32* @TS_PATH_DELIMITER, align 4
  %16 = call i8* @strstr(i8* %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = trunc i64 %7 to i32
  %18 = call i32 @memset(i8* %9, i32 0, i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @strncpy(i8* %9, i8* %19, i32 %25)
  %27 = load i32, i32* @dbSdb, align 4
  %28 = call i64 @sdbGetRow(i32 %27, i8* %9)
  %29 = inttoptr i64 %28 to i32*
  %30 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32* %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @sdbGetRow(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
