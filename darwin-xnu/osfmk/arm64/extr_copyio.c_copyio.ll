; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_copyio.c_copyio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_copyio.c_copyio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TBI_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@copyio_zalloc_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"copyio: kernel buffer %p has size %lu < nbytes %lu\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64, i64*)* @copyio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyio(i32 %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i64, i64* @TBI_MASK, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %120

26:                                               ; preds = %18
  br label %36

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* @TBI_MASK, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %6, align 4
  br label %120

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* @copyio_zalloc_check, align 4
  %38 = call i64 @__probable(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %43, %40
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %15, align 8
  br label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %15, align 8
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i8*, i8** %15, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %15, align 8
  %64 = call i64 @zone_element_size(i8* %63, i32* null)
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp slt i64 %69, %70
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ false, %65 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @__improbable(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %15, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %78, i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %36
  %84 = call i32 (...) @user_access_enable()
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %115 [
    i32 131, label %86
    i32 130, label %91
    i32 129, label %103
    i32 128, label %110
  ]

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @_bcopyin(i8* %87, i8* %88, i64 %89)
  store i32 %90, i32* %12, align 4
  br label %117

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @_bcopyinstr(i8* %92, i8* %93, i64 %94, i64* %13)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @EFAULT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i64, i64* %13, align 8
  %101 = load i64*, i64** %11, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %91
  br label %117

103:                                              ; preds = %83
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = inttoptr i64 %106 to i32*
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @_copyin_word(i8* %104, i32* %107, i64 %108)
  store i32 %109, i32* %12, align 4
  br label %117

110:                                              ; preds = %83
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @_bcopyout(i8* %111, i8* %112, i64 %113)
  store i32 %114, i32* %12, align 4
  br label %117

115:                                              ; preds = %83
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %110, %103, %102, %86
  %118 = call i32 (...) @user_access_disable()
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %33, %24
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @__probable(i32) #1

declare dso_local i64 @zone_element_size(i8*, i32*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @panic(i8*, i8*, i64, i64) #1

declare dso_local i32 @user_access_enable(...) #1

declare dso_local i32 @_bcopyin(i8*, i8*, i64) #1

declare dso_local i32 @_bcopyinstr(i8*, i8*, i64, i64*) #1

declare dso_local i32 @_copyin_word(i8*, i32*, i64) #1

declare dso_local i32 @_bcopyout(i8*, i8*, i64) #1

declare dso_local i32 @user_access_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
