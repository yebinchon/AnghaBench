; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_LoadTableW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_LoadTableW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"@table_name.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadTableW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = mul nuw i64 4, %9
  %13 = trunc i64 %12 to i32
  %14 = call i32 @Zero(i32* %11, i32 %13)
  %15 = call i32* @ReadDump(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @CfgReadNextLine(i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @IsEmptyStr(i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = mul nuw i64 4, %9
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @StrToUni(i32* %11, i32 %29, i8* %30)
  store i32* %11, i32** %2, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @Free(i8* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @FreeBuf(i32* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @LoadTableMain(i32* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32* @ReadDump(i8*) #2

declare dso_local i8* @CfgReadNextLine(i32*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @FreeBuf(i32*) #2

declare dso_local i32 @LoadTableMain(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
