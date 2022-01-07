; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregsub9.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregsub9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rregsub9(i8* %0, i8* %1, i32 %2, %struct.TYPE_7__* %3, i32 %4) #0 {
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
  %17 = udiv i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %176, %5
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %179

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %110

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %99 [
    i32 48, label %35
    i32 49, label %35
    i32 50, label %35
    i32 51, label %35
    i32 52, label %35
    i32 53, label %35
    i32 54, label %35
    i32 55, label %35
    i32 56, label %35
    i32 57, label %35
    i32 92, label %88
    i32 0, label %96
  ]

35:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 48
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %87

48:                                               ; preds = %35
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %83, %55
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ult i8* %64, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %77, %73
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  br label %63

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %51, %48, %35
  br label %109

88:                                               ; preds = %30
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  store i8 92, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %88
  br label %109

96:                                               ; preds = %30
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %6, align 8
  br label %109

99:                                               ; preds = %30
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ult i8* %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %96, %95, %87
  br label %176

110:                                              ; preds = %25
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 38
  br i1 %114, label %115, label %165

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %115
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %124 = icmp ne %struct.TYPE_7__* %123, null
  br i1 %124, label %125, label %164

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %125
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %163

135:                                              ; preds = %128
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %11, align 8
  br label %141

141:                                              ; preds = %159, %135
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ult i8* %142, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %141
  %150 = load i8*, i8** %7, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = icmp ult i8* %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i8*, i8** %11, align 8
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  store i8 %155, i8* %156, align 1
  br label %158

158:                                              ; preds = %153, %149
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %11, align 8
  br label %141

162:                                              ; preds = %141
  br label %163

163:                                              ; preds = %162, %128
  br label %164

164:                                              ; preds = %163, %125, %122, %115
  br label %175

165:                                              ; preds = %110
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ult i8* %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i8*, i8** %6, align 8
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %7, align 8
  store i8 %171, i8* %172, align 1
  br label %174

174:                                              ; preds = %169, %165
  br label %175

175:                                              ; preds = %174, %164
  br label %176

176:                                              ; preds = %175, %109
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %6, align 8
  br label %20

179:                                              ; preds = %20
  %180 = load i8*, i8** %7, align 8
  store i8 0, i8* %180, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
