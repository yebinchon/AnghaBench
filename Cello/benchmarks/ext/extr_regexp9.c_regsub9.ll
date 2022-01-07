; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_regsub9.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_regsub9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regsub9(i8* %0, i8* %1, i32 %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %175, %5
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %178

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %109

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %98 [
    i32 48, label %34
    i32 49, label %34
    i32 50, label %34
    i32 51, label %34
    i32 52, label %34
    i32 53, label %34
    i32 54, label %34
    i32 55, label %34
    i32 56, label %34
    i32 57, label %34
    i32 92, label %87
    i32 0, label %95
  ]

34:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %13, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %86

47:                                               ; preds = %34
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %82, %54
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ult i8* %63, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %11, align 8
  br label %62

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %50, %47, %34
  br label %108

87:                                               ; preds = %29
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i8 92, i8* %92, align 1
  br label %94

94:                                               ; preds = %91, %87
  br label %108

95:                                               ; preds = %29
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %97, i8** %6, align 8
  br label %108

98:                                               ; preds = %29
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 %104, i8* %105, align 1
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %95, %94, %86
  br label %175

109:                                              ; preds = %24
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 38
  br i1 %113, label %114, label %164

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %163

121:                                              ; preds = %114
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %163

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %124
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %162

134:                                              ; preds = %127
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %11, align 8
  br label %140

140:                                              ; preds = %158, %134
  %141 = load i8*, i8** %11, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ult i8* %141, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %140
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = icmp ult i8* %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %11, align 8
  br label %140

161:                                              ; preds = %140
  br label %162

162:                                              ; preds = %161, %127
  br label %163

163:                                              ; preds = %162, %124, %121, %114
  br label %174

164:                                              ; preds = %109
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = icmp ult i8* %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %168, %164
  br label %174

174:                                              ; preds = %173, %163
  br label %175

175:                                              ; preds = %174, %108
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %6, align 8
  br label %19

178:                                              ; preds = %19
  %179 = load i8*, i8** %7, align 8
  store i8 0, i8* %179, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
