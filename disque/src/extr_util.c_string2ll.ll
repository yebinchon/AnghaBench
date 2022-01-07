; ModuleID = '/home/carl/AnghaBench/disque/src/extr_util.c_string2ll.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_util.c_string2ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string2ll(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %174

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %7, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  store i32 1, i32* %4, align 4
  br label %174

32:                                               ; preds = %20, %17
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %174

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 49
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %83

71:                                               ; preds = %54, %48
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 48
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64*, i64** %7, align 8
  store i64 0, i64* %81, align 8
  store i32 1, i32* %4, align 4
  br label %174

82:                                               ; preds = %77, %71
  store i32 0, i32* %4, align 4
  br label %174

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %123, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 48
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sle i32 %98, 57
  br label %100

100:                                              ; preds = %94, %88, %84
  %101 = phi i1 [ false, %88 ], [ false, %84 ], [ %99, %94 ]
  br i1 %101, label %102, label %136

102:                                              ; preds = %100
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* @ULLONG_MAX, align 4
  %105 = sdiv i32 %104, 10
  %106 = sext i32 %105 to i64
  %107 = icmp ugt i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %174

109:                                              ; preds = %102
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %110, 10
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* @ULLONG_MAX, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = sub nsw i32 %117, 48
  %119 = sub nsw i32 %113, %118
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %112, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %174

123:                                              ; preds = %109
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %11, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %84

136:                                              ; preds = %100
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %6, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %174

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* @LLONG_MIN, align 4
  %147 = add nsw i32 %146, 1
  %148 = sub nsw i32 0, %147
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 1
  %151 = icmp ugt i64 %145, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %174

153:                                              ; preds = %144
  %154 = load i64*, i64** %7, align 8
  %155 = icmp ne i64* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i64, i64* %11, align 8
  %158 = sub i64 0, %157
  %159 = load i64*, i64** %7, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %153
  br label %173

161:                                              ; preds = %141
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* @LLONG_MAX, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %174

166:                                              ; preds = %161
  %167 = load i64*, i64** %7, align 8
  %168 = icmp ne i64* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i64, i64* %11, align 8
  %171 = load i64*, i64** %7, align 8
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %160
  store i32 1, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %165, %152, %140, %122, %108, %82, %80, %46, %31, %16
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
