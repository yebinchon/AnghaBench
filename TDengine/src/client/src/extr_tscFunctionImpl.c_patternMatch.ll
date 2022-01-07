; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_patternMatch.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_patternMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8 }

@TSDB_PATTERN_NOWILDCARDMATCH = common dso_local global i32 0, align 4
@TSDB_PATTERN_MATCH = common dso_local global i32 0, align 4
@TSDB_PATTERN_NOMATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @patternMatch(i8* %0, i8* %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %167, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %19
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %10, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %172

25:                                               ; preds = %17
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %134

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %78, %33
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %34
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %48, %52
  br label %54

54:                                               ; preds = %46, %34
  %55 = phi i1 [ true, %34 ], [ %53, %46 ]
  br i1 %55, label %56, label %79

56:                                               ; preds = %54
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %56
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68, %64
  %77 = load i32, i32* @TSDB_PATTERN_NOWILDCARDMATCH, align 4
  store i32 %77, i32* %5, align 4
  br label %191

78:                                               ; preds = %68, %56
  br label %34

79:                                               ; preds = %54
  %80 = load i8, i8* %10, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @TSDB_PATTERN_MATCH, align 4
  store i32 %84, i32* %5, align 4
  br label %191

85:                                               ; preds = %79
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %87 = load i8, i8* %10, align 1
  %88 = call signext i8 @toupper(i8 signext %87)
  store i8 %88, i8* %86, align 1
  %89 = getelementptr inbounds i8, i8* %86, i64 1
  %90 = load i8, i8* %10, align 1
  %91 = call i64 @tolower(i8 signext %90)
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %89, align 1
  %93 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %85, %131
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %97 = call i64 @strcspn(i8* %95, i8* %96)
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, 1
  %110 = icmp uge i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %94
  br label %132

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %15, align 8
  %120 = sub i64 %118, %119
  %121 = sub i64 %120, 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = call i32 @patternMatch(i8* %115, i8* %117, i64 %121, %struct.TYPE_3__* %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load i64, i64* %16, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  br label %191

131:                                              ; preds = %112
  br label %94

132:                                              ; preds = %111
  %133 = load i32, i32* @TSDB_PATTERN_NOWILDCARDMATCH, align 4
  store i32 %133, i32* %5, align 4
  br label %191

134:                                              ; preds = %25
  %135 = load i8*, i8** %7, align 8
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %11, align 1
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %8, align 8
  %142 = icmp ule i64 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %134
  %144 = load i8, i8* %10, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* %11, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %167, label %149

149:                                              ; preds = %143
  %150 = load i8, i8* %10, align 1
  %151 = call i64 @tolower(i8 signext %150)
  %152 = load i8, i8* %11, align 1
  %153 = call i64 @tolower(i8 signext %152)
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = load i8, i8* %10, align 1
  %157 = sext i8 %156 to i32
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %157, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load i8, i8* %11, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %149, %143
  br label %17

168:                                              ; preds = %163, %155
  br label %169

169:                                              ; preds = %168, %134
  %170 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %5, align 4
  br label %191

172:                                              ; preds = %17
  %173 = load i8*, i8** %7, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* %8, align 8
  %182 = icmp uge i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179, %172
  %184 = load i32, i32* @TSDB_PATTERN_MATCH, align 4
  %185 = sext i32 %184 to i64
  br label %188

186:                                              ; preds = %179
  %187 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i64 [ %185, %183 ], [ %187, %186 ]
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %188, %169, %132, %128, %83, %76
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
