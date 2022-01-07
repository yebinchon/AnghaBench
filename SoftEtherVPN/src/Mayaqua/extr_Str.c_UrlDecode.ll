; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_UrlDecode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_UrlDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @UrlDecode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %80

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @StrLen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %67, %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 2
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 2
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 2
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %50 = call i64 @HexToInt(i8* %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i8
  %54 = call i32 @WriteBufChar(%struct.TYPE_5__* %51, i8 signext %53)
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 2
  store i64 %56, i64* %4, align 8
  br label %67

57:                                               ; preds = %30, %22
  %58 = load i8, i8* %8, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i8 32, i8* %8, align 1
  br label %62

62:                                               ; preds = %61, %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = load i8, i8* %8, align 1
  %65 = call i32 @WriteBufChar(%struct.TYPE_5__* %63, i8 signext %64)
  br label %66

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = call i32 @WriteBufChar(%struct.TYPE_5__* %71, i8 signext 0)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @CopyStr(i32 %75)
  store i8* %76, i8** %7, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = call i32 @FreeBuf(%struct.TYPE_5__* %77)
  %79 = load i8*, i8** %7, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %70, %13
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local %struct.TYPE_5__* @NewBuf(...) #1

declare dso_local i64 @HexToInt(i8*) #1

declare dso_local i32 @WriteBufChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i8* @CopyStr(i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
