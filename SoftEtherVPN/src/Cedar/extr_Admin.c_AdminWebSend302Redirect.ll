; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebSend302Redirect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebSend302Redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [121 x i8] c"<html><head><title>Object moved</title></head><body>\0D\0A<h2>Object moved to <a href=\22$URL$\22>here</a>.</h2>\0D\0A</body></html>\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"$URL$\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdminWebSend302Redirect(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i32 0, i32* %5, align 4
  br label %79

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @StrSize(i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @StrSize(i8* %28)
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* @MAX_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i8* @ZeroMalloc(i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @StrCpy(i8* %36, i32 %37, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @IsEmptyStr(i8* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @StrCat(i8* %44, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @StrCat(i8* %47, i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %43, %25
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @StrSize(i8* %52)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @StrSize(i8* %54)
  %56 = add nsw i32 %53, %55
  %57 = load i32, i32* @MAX_SIZE, align 4
  %58 = add nsw i32 %56, %57
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @ZeroMalloc(i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @ReplaceStrEx(i8* %62, i32 %63, i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 0)
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @StrLen(i8* %69)
  %71 = load i8*, i8** %13, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @AdminWebSendBody(i32* %67, i32 302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %70, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @Free(i8* %74)
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @Free(i8* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %51, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @StrSize(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i32 @ReplaceStrEx(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @AdminWebSendBody(i32*, i32, i8*, i8*, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
