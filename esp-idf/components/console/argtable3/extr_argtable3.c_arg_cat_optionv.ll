; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_cat_optionv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_cat_optionv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i8*, i32, i8*)* @arg_cat_optionv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_cat_optionv(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [3 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i8*, i8** %14, align 8
  br label %24

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %23 ]
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %15, align 8
  br label %30

30:                                               ; preds = %49, %28
  %31 = load i8*, i8** %15, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  store i8 45, i8* %35, align 1
  %36 = load i8*, i8** %15, align 8
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 2
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %41 = call i32 @arg_cat(i8** %8, i8* %40, i64* %9)
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %15, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @arg_cat(i8** %8, i8* %47, i64* %9)
  br label %49

49:                                               ; preds = %46, %34
  br label %30

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @arg_cat(i8** %8, i8* %58, i64* %9)
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  store i8* %64, i8** %17, align 8
  br label %65

65:                                               ; preds = %97, %63
  %66 = load i8*, i8** %17, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = call i32 @arg_cat(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  %71 = load i8*, i8** %17, align 8
  %72 = call i64 @strcspn(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %72, i64* %18, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i64, i64* %18, align 8
  br label %82

80:                                               ; preds = %69
  %81 = load i64, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @strncat(i8* %73, i8* %74, i64 %83)
  %85 = load i64, i64* %18, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %17, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 44
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @arg_cat(i8** %8, i8* %93, i64* %9)
  %95 = load i8*, i8** %17, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %17, align 8
  br label %97

97:                                               ; preds = %92, %82
  br label %65

98:                                               ; preds = %65
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @arg_cat(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64* %9)
  br label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @arg_cat(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64* %9)
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %105
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = call i32 @arg_cat(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64* %9)
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @arg_cat(i8** %8, i8* %118, i64* %9)
  %120 = call i32 @arg_cat(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64* %9)
  br label %124

121:                                              ; preds = %113
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @arg_cat(i8** %8, i8* %122, i64* %9)
  br label %124

124:                                              ; preds = %121, %116
  br label %125

125:                                              ; preds = %124, %99
  ret void
}

declare dso_local i32 @arg_cat(i8**, i8*, i64*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
