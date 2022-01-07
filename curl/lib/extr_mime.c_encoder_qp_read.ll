; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_qp_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_qp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32*, i64 }

@aschex = common dso_local global i8* null, align 8
@qp_class = common dso_local global i32* null, align 8
@MAX_ENCODED_LINE_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"=\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, %struct.TYPE_6__*)* @encoder_qp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encoder_qp_read(i8* %0, i64 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %170, %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %176

29:                                               ; preds = %21
  store i64 1, i64* %15, align 8
  store i64 1, i64* %16, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** @aschex, align 8
  %42 = load i32, i32* %17, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 1
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** @aschex, align 8
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %50, 15
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  store i8 %54, i8* %55, align 1
  %56 = load i32*, i32** @qp_class, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %56, i64 %66
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %93 [
    i32 129, label %69
    i32 128, label %70
    i32 130, label %80
  ]

69:                                               ; preds = %29
  br label %95

70:                                               ; preds = %29
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @qp_lookahead_eol(%struct.TYPE_5__* %71, i32 %72, i64 1)
  switch i32 %73, label %77 [
    i32 -1, label %74
    i32 0, label %76
  ]

74:                                               ; preds = %70
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %5, align 8
  br label %178

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 61, i8* %78, align 1
  store i64 3, i64* %15, align 8
  br label %79

79:                                               ; preds = %77, %76
  br label %95

80:                                               ; preds = %29
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @qp_lookahead_eol(%struct.TYPE_5__* %81, i32 %82, i64 0)
  switch i32 %83, label %90 [
    i32 -1, label %84
    i32 1, label %86
  ]

84:                                               ; preds = %80
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %178

86:                                               ; preds = %80
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %87
  store i8 10, i8* %89, align 1
  store i64 2, i64* %16, align 8
  br label %92

90:                                               ; preds = %80
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 61, i8* %91, align 1
  store i64 3, i64* %15, align 8
  br label %92

92:                                               ; preds = %90, %86
  br label %95

93:                                               ; preds = %29
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 61, i8* %94, align 1
  store i64 3, i64* %15, align 8
  br label %95

95:                                               ; preds = %93, %92, %79, %69
  %96 = load i64, i64* %15, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 10
  br i1 %101, label %102, label %137

102:                                              ; preds = %95
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* @MAX_ENCODED_LINE_LENGTH, align 8
  %109 = icmp ugt i64 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %102
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %116, %117
  %119 = load i64, i64* @MAX_ENCODED_LINE_LENGTH, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i64, i64* %16, align 8
  %125 = call i32 @qp_lookahead_eol(%struct.TYPE_5__* %122, i32 %123, i64 %124)
  switch i32 %125, label %129 [
    i32 -1, label %126
    i32 0, label %128
  ]

126:                                              ; preds = %121
  %127 = load i64, i64* %12, align 8
  store i64 %127, i64* %5, align 8
  br label %178

128:                                              ; preds = %121
  store i32 1, i32* %13, align 4
  br label %129

129:                                              ; preds = %121, %128
  br label %130

130:                                              ; preds = %129, %113, %102
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %135 = call i32 @strcpy(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 3, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %95
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %7, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %176

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %145 = load i64, i64* %15, align 8
  %146 = call i32 @memcpy(i8* %143, i8* %144, i64 %145)
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %12, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %11, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %7, align 8
  %155 = sub i64 %154, %153
  store i64 %155, i64* %7, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %156
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %15, align 8
  %162 = sub i64 %161, 1
  %163 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 10
  br i1 %166, label %167, label %170

167:                                              ; preds = %142
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %167, %142
  %171 = load i64, i64* %16, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %171
  store i64 %175, i64* %173, align 8
  br label %21

176:                                              ; preds = %141, %21
  %177 = load i64, i64* %12, align 8
  store i64 %177, i64* %5, align 8
  br label %178

178:                                              ; preds = %176, %126, %84, %74
  %179 = load i64, i64* %5, align 8
  ret i64 %179
}

declare dso_local i32 @qp_lookahead_eol(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
