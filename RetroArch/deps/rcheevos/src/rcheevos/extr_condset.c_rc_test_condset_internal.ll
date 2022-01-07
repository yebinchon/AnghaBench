; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_condset.c_rc_test_condset_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_condset.c_rc_test_condset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i8*, i32*)* @rc_test_condset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_test_condset_internal(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  br label %23

23:                                               ; preds = %182, %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %186

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %182

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %99 [
    i32 132, label %37
    i32 128, label %46
    i32 133, label %55
    i32 131, label %90
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @rc_evaluate_operand(i32* %39, i32 %40, i8* %41, i32* %42)
  %44 = load i32, i32* %18, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %18, align 4
  br label %182

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @rc_evaluate_operand(i32* %48, i32 %49, i8* %50, i32* %51)
  %53 = load i32, i32* %18, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %18, align 4
  br label %182

55:                                               ; preds = %33
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @rc_test_condition(%struct.TYPE_6__* %56, i32 %57, i32 %58, i8* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %76, %68
  br label %82

82:                                               ; preds = %81, %55
  store i32 0, i32* %18, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %19, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %19, align 4
  br label %182

90:                                               ; preds = %33
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @rc_test_condition(%struct.TYPE_6__* %91, i32 %92, i32 %93, i8* %94, i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %182

99:                                               ; preds = %33
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @rc_test_condition(%struct.TYPE_6__* %100, i32 %101, i32 %102, i8* %103, i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %99
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = zext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 1, i32* %16, align 4
  br label %153

125:                                              ; preds = %113, %99
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %151

138:                                              ; preds = %128
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %137
  br label %152

152:                                              ; preds = %151, %125
  br label %153

153:                                              ; preds = %152, %124
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %177 [
    i32 130, label %157
    i32 129, label %171
  ]

157:                                              ; preds = %153
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1, i32* %7, align 4
  br label %188

161:                                              ; preds = %157
  store i32 0, i32* %15, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store i64 0, i64* %168, align 8
  br label %170

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169, %166
  br label %181

171:                                              ; preds = %153
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32*, i32** %10, align 8
  store i32 1, i32* %175, align 4
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %174, %171
  br label %181

177:                                              ; preds = %153
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %177, %176, %170
  br label %182

182:                                              ; preds = %181, %90, %82, %46, %37, %32
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  store %struct.TYPE_6__* %185, %struct.TYPE_6__** %14, align 8
  br label %23

186:                                              ; preds = %23
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %160
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i32 @rc_evaluate_operand(i32*, i32, i8*, i32*) #1

declare dso_local i32 @rc_test_condition(%struct.TYPE_6__*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
