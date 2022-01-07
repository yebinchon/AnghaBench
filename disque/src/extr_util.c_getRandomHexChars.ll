; ModuleID = '/home/carl/AnghaBench/disque/src/extr_util.c_getRandomHexChars.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_util.c_getRandomHexChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i8, i8 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@getRandomHexChars.seed_initialized = internal global i32 0, align 4
@getRandomHexChars.seed = internal global [20 x i8] zeroinitializer, align 16
@getRandomHexChars.counter = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getRandomHexChars(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 1
  %14 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %15 = load i32, i32* @getRandomHexChars.seed_initialized, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %2
  %18 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @fread(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomHexChars.seed, i64 0, i64 0), i32 20, i32 1, i32* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* @getRandomHexChars.seed_initialized, align 4
  br label %26

26:                                               ; preds = %25, %21, %17
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @fclose(i32* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* @getRandomHexChars.seed_initialized, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp ugt i32 %41, 20
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 20, %43 ], [ %45, %44 ]
  store i32 %47, i32* %10, align 4
  %48 = call i32 @SHA1Init(i32* %9)
  %49 = call i32 @SHA1Update(i32* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomHexChars.seed, i64 0, i64 0), i32 20)
  %50 = call i32 @SHA1Update(i32* %9, i8* bitcast (i64* @getRandomHexChars.counter to i8*), i32 8)
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %52 = call i32 @SHA1Final(i8* %51, i32* %9)
  %53 = load i64, i64* @getRandomHexChars.counter, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* @getRandomHexChars.counter, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @memcpy(i8* %55, i8* %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %79, %46
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 15
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %64, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 %74, i8* %78, align 1
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %59

82:                                               ; preds = %59
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %3, align 8
  br label %37

90:                                               ; preds = %37
  br label %171

91:                                               ; preds = %33
  %92 = load i8*, i8** %3, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %12, align 4
  %94 = call zeroext i8 (...) @getpid()
  store i8 %94, i8* %14, align 1
  %95 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = icmp uge i64 %97, 1
  br i1 %98, label %99, label %109

99:                                               ; preds = %91
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %102 = call i32 @memcpy(i8* %100, i8* %101, i32 1)
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = sub i64 %104, 1
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %12, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %11, align 8
  br label %109

109:                                              ; preds = %99, %91
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = icmp uge i64 %111, 1
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %116 = call i32 @memcpy(i8* %114, i8* %115, i32 1)
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = sub i64 %118, 1
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %11, align 8
  br label %123

123:                                              ; preds = %113, %109
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = icmp uge i64 %125, 1
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @memcpy(i8* %128, i8* %14, i32 1)
  %130 = load i32, i32* %12, align 4
  %131 = zext i32 %130 to i64
  %132 = sub i64 %131, 1
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %12, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8* %135, i8** %11, align 8
  br label %136

136:                                              ; preds = %127, %123
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %167, %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = call signext i8 (...) @rand()
  %143 = sext i8 %142 to i32
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = xor i32 %149, %143
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  %152 = load i8*, i8** %5, align 8
  %153 = load i8*, i8** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = and i32 %158, 15
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %152, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %3, align 8
  %164 = load i32, i32* %6, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %162, i8* %166, align 1
  br label %167

167:                                              ; preds = %141
  %168 = load i32, i32* %6, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %137

170:                                              ; preds = %137
  br label %171

171:                                              ; preds = %170, %90
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @getpid(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local signext i8 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
