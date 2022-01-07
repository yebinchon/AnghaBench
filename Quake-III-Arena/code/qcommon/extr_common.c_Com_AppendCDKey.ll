; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_AppendCDKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_AppendCDKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/q3key\00", align 1
@cl_cdkey = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"                \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_AppendCDKey(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [33 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_OSPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @FS_SV_FOpenFileRead(i8* %11, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** @cl_cdkey, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  %20 = call i32 @Q_strncpyz(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 17)
  store i32 1, i32* %7, align 4
  br label %42

21:                                               ; preds = %1
  %22 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %23 = call i32 @Com_Memset(i8* %22, i32 0, i32 33)
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @FS_Read(i8* %24, i32 16, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @FS_FCloseFile(i32 %27)
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %30 = call i64 @CL_CDKeyValidate(i8* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32*, i32** @cl_cdkey, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 16
  %35 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %36 = call i32 @strcat(i32* %34, i8* %35)
  br label %41

37:                                               ; preds = %21
  %38 = load i32*, i32** @cl_cdkey, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = call i32 @Q_strncpyz(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 17)
  br label %41

41:                                               ; preds = %37, %32
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %46 [
    i32 0, label %45
    i32 1, label %45
  ]

45:                                               ; preds = %42, %42
  ret void

46:                                               ; preds = %42
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i8*, i32*) #2

declare dso_local i32 @Q_strncpyz(i32*, i8*, i32) #2

declare dso_local i32 @Com_Memset(i8*, i32, i32) #2

declare dso_local i32 @FS_Read(i8*, i32, i32) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

declare dso_local i64 @CL_CDKeyValidate(i8*, i32*) #2

declare dso_local i32 @strcat(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
