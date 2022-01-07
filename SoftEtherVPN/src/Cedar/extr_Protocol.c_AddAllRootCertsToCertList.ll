; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_AddAllRootCertsToCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_AddAllRootCertsToCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROOT_CERTS_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"AddAllRootCertsToCertList: ok=%u error=%u total_list_len=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddAllRootCertsToCertList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %77

15:                                               ; preds = %1
  %16 = load i32, i32* @ROOT_CERTS_FILENAME, align 4
  %17 = call i32* @ReadDump(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %77

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @BufToPack(i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @PackGetIndexCount(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %28, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %63, %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32* @PackGetBufEx(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @BufToX(i32* %40, i32 0)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @AddXToCertList(i32* %45, i32* %46)
  store i32 1, i32* %9, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @FreeX(i32* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @FreeBuf(i32* %51)
  br label %53

53:                                               ; preds = %50, %33
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %29

66:                                               ; preds = %29
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @FreePack(i32* %67)
  br label %69

69:                                               ; preds = %66, %21
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @FreeBuf(i32* %70)
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @LIST_NUM(i32* %74)
  %76 = call i32 @Debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73, i32 %75)
  br label %77

77:                                               ; preds = %69, %20, %14
  ret void
}

declare dso_local i32* @ReadDump(i32) #1

declare dso_local i32* @BufToPack(i32*) #1

declare dso_local i64 @PackGetIndexCount(i32*, i8*) #1

declare dso_local i32* @PackGetBufEx(i32*, i8*, i64) #1

declare dso_local i32* @BufToX(i32*, i32) #1

declare dso_local i32 @AddXToCertList(i32*, i32*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @Debug(i8*, i64, i64, i32) #1

declare dso_local i32 @LIST_NUM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
