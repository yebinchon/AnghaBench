; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_int_scanfn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_int_scanfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_int = type { i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EMAXCOUNT = common dso_local global i32 0, align 4
@EBADINT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_int*, i8*)* @arg_int_scanfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_int_scanfn(%struct.arg_int* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_int*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.arg_int* %0, %struct.arg_int** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.arg_int*, %struct.arg_int** %4, align 8
  %10 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.arg_int*, %struct.arg_int** %4, align 8
  %13 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EMAXCOUNT, align 4
  store i32 %18, i32* %6, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.arg_int*, %struct.arg_int** %4, align 8
  %24 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %149

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strtol0X(i8* %28, i8** %8, i8 signext 88, i32 16)
  store i64 %29, i64* %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strtol0X(i8* %34, i8** %8, i8 signext 79, i32 8)
  store i64 %35, i64* %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strtol0X(i8* %40, i8** %8, i8 signext 66, i32 2)
  store i64 %41, i64* %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strtol(i8* %46, i8** %8, i32 10)
  store i64 %47, i64* %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EBADINT, align 4
  store i32 %52, i32* %3, align 4
  br label %152

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @INT_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @INT_MIN, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @EOVERFLOW, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @detectsuffix(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @INT_MAX, align 8
  %73 = sdiv i64 %72, 1024
  %74 = icmp sgt i64 %71, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @INT_MIN, align 8
  %78 = sdiv i64 %77, 1024
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @EOVERFLOW, align 4
  store i32 %81, i32* %6, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %7, align 8
  %84 = mul nsw i64 %83, 1024
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %82, %80
  br label %135

86:                                               ; preds = %66
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @detectsuffix(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @INT_MAX, align 8
  %93 = sdiv i64 %92, 1048576
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @INT_MIN, align 8
  %98 = sdiv i64 %97, 1048576
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @EOVERFLOW, align 4
  store i32 %101, i32* %6, align 4
  br label %105

102:                                              ; preds = %95
  %103 = load i64, i64* %7, align 8
  %104 = mul nsw i64 %103, 1048576
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %102, %100
  br label %134

106:                                              ; preds = %86
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @detectsuffix(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @INT_MAX, align 8
  %113 = sdiv i64 %112, 1073741824
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @INT_MIN, align 8
  %118 = sdiv i64 %117, 1073741824
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115, %110
  %121 = load i32, i32* @EOVERFLOW, align 4
  store i32 %121, i32* %6, align 4
  br label %125

122:                                              ; preds = %115
  %123 = load i64, i64* %7, align 8
  %124 = mul nsw i64 %123, 1073741824
  store i64 %124, i64* %7, align 8
  br label %125

125:                                              ; preds = %122, %120
  br label %133

126:                                              ; preds = %106
  %127 = load i8*, i8** %8, align 8
  %128 = call i64 @detectsuffix(i8* %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @EBADINT, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133, %105
  br label %135

135:                                              ; preds = %134, %85
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.arg_int*, %struct.arg_int** %4, align 8
  %141 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.arg_int*, %struct.arg_int** %4, align 8
  %144 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  %147 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64 %139, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %135
  br label %149

149:                                              ; preds = %148, %22
  br label %150

150:                                              ; preds = %149, %17
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %51
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @strtol0X(i8*, i8**, i8 signext, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @detectsuffix(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
