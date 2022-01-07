; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_encodelen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_encodelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF_REVERSE_ENDIAN = common dso_local global i32 0, align 4
@UTF_DECOMPOSED = common dso_local global i32 0, align 4
@UCS_ALT_NULL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_encodelen(i8* %0, i64 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @UTF_REVERSE_ENDIAN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @UTF_DECOMPOSED, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i64, i64* %6, align 8
  %24 = udiv i64 %23, 2
  store i64 %24, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %25

25:                                               ; preds = %90, %4
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %13, align 8
  %28 = icmp ugt i64 %26, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i8, i8* %35, align 1
  store i8 %37, i8* %9, align 1
  br label %90

38:                                               ; preds = %29
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %9, align 1
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8, i8* %9, align 1
  %46 = call signext i8 @OSSwapInt16(i8 signext %45)
  store i8 %46, i8* %9, align 1
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 95, %58 ]
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  br label %89

62:                                               ; preds = %47
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8, i8* @UCS_ALT_NULL, align 1
  store i8 %67, i8* %9, align 1
  br label %88

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8, i8* %9, align 1
  %73 = call i64 @unicode_decomposeable(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8, i8* %9, align 1
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %78 = call i32 @unicode_decompose(i8 signext %76, i8* %77)
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %13, align 8
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %9, align 1
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  store i8* %86, i8** %10, align 8
  br label %87

87:                                               ; preds = %75, %71, %68
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89, %32
  %91 = load i8, i8* %9, align 1
  %92 = call i64 @UNICODE_TO_UTF8_LEN(i8 signext %91)
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %16, align 8
  br label %25

95:                                               ; preds = %25
  %96 = load i64, i64* %16, align 8
  ret i64 %96
}

declare dso_local signext i8 @OSSwapInt16(i8 signext) #1

declare dso_local i64 @unicode_decomposeable(i8 signext) #1

declare dso_local i32 @unicode_decompose(i8 signext, i8*) #1

declare dso_local i64 @UNICODE_TO_UTF8_LEN(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
