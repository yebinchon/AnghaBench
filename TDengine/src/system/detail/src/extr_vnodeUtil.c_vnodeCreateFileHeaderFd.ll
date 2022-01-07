; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeCreateFileHeaderFd.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeCreateFileHeaderFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_FILE_HEADER_LEN = common dso_local global i32 0, align 4
@vnodeFileVersion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tsdb version: %s\0A\00", align 1
@version = common dso_local global i8* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeCreateFileHeaderFd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @TSDB_FILE_HEADER_LEN, align 4
  %7 = sdiv i32 %6, 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = trunc i64 %8 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @memset(i8* %10, i32 0, i32 %12)
  %14 = load i32, i32* @vnodeFileVersion, align 4
  %15 = bitcast i8* %10 to i32*
  store i32 %14, i32* %15, align 16
  %16 = getelementptr inbounds i8, i8* %10, i64 4
  %17 = load i8*, i8** @version, align 8
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @lseek(i32 %19, i32 0, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @twrite(i32 %22, i8* %10, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memset(i8* %10, i32 0, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @twrite(i32 %27, i8* %10, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @memset(i8* %10, i32 0, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @twrite(i32 %32, i8* %10, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @twrite(i32 %35, i8* %10, i32 %36)
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @twrite(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
