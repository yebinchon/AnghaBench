; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_backslash.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_backslash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cp = common dso_local global i64* null, align 8
@map = common dso_local global i32* null, align 8
@DIGIT = common dso_local global i32 0, align 4
@HEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ill-formed hexadecimal escape sequence\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ill-formed hexadecimal escape sequence `\\x%c'\0A\00", align 1
@widechar = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"overflow in hexadecimal escape sequence\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unrecognized character escape sequence\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"unrecognized character escape sequence `\\%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @backslash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backslash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64*, i64** @cp, align 8
  %7 = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %7, i64** @cp, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %163 [
    i64 97, label %9
    i64 98, label %10
    i64 102, label %11
    i64 110, label %12
    i64 114, label %13
    i64 116, label %14
    i64 118, label %15
    i64 39, label %16
    i64 34, label %16
    i64 92, label %16
    i64 63, label %16
    i64 120, label %17
    i64 48, label %120
    i64 49, label %120
    i64 50, label %120
    i64 51, label %120
    i64 52, label %120
    i64 53, label %120
    i64 54, label %120
    i64 55, label %120
  ]

9:                                                ; preds = %1
  store i32 7, i32* %2, align 4
  br label %186

10:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %186

11:                                               ; preds = %1
  store i32 12, i32* %2, align 4
  br label %186

12:                                               ; preds = %1
  store i32 10, i32* %2, align 4
  br label %186

13:                                               ; preds = %1
  store i32 13, i32* %2, align 4
  br label %186

14:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %186

15:                                               ; preds = %1
  store i32 11, i32* %2, align 4
  br label %186

16:                                               ; preds = %1, %1, %1, %1
  br label %181

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %18 = load i32*, i32** @map, align 8
  %19 = load i64*, i64** @cp, align 8
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DIGIT, align 4
  %24 = load i32, i32* @HEX, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %17
  %29 = load i64*, i64** @cp, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %30, 32
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64*, i64** @cp, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 127
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %42

38:                                               ; preds = %32
  %39 = load i64*, i64** @cp, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i64*, i64** @cp, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64*, i64** @cp, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** @cp, align 8
  br label %51

51:                                               ; preds = %48, %42
  store i32 0, i32* %2, align 4
  br label %186

52:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %104, %52
  %54 = load i32*, i32** @map, align 8
  %55 = load i64*, i64** @cp, align 8
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DIGIT, align 4
  %60 = load i32, i32* @HEX, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @widechar, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 8, %68
  %70 = sub nsw i32 %69, 4
  %71 = lshr i32 %65, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32*, i32** @map, align 8
  %76 = load i64*, i64** @cp, align 8
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DIGIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = shl i32 %84, 4
  %86 = zext i32 %85 to i64
  %87 = load i64*, i64** @cp, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %86, %88
  %90 = sub i64 %89, 48
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %103

92:                                               ; preds = %74
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 4
  %95 = zext i32 %94 to i64
  %96 = load i64*, i64** @cp, align 8
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %97, -33
  %99 = add i64 %95, %98
  %100 = sub i64 %99, 65
  %101 = add i64 %100, 10
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %83
  br label %104

104:                                              ; preds = %103
  %105 = load i64*, i64** @cp, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** @cp, align 8
  br label %53

107:                                              ; preds = %53
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @widechar, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 8, %116
  %118 = call i32 @ones(i32 %117)
  %119 = and i32 %113, %118
  store i32 %119, i32* %2, align 4
  br label %186

120:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %121 = load i64*, i64** @cp, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 -1
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %123, 48
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %4, align 4
  %126 = load i64*, i64** @cp, align 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp uge i64 %127, 48
  br i1 %128, label %129, label %161

129:                                              ; preds = %120
  %130 = load i64*, i64** @cp, align 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp ule i64 %131, 55
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = load i32, i32* %4, align 4
  %135 = shl i32 %134, 3
  %136 = zext i32 %135 to i64
  %137 = load i64*, i64** @cp, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** @cp, align 8
  %139 = load i64, i64* %137, align 8
  %140 = add i64 %136, %139
  %141 = sub i64 %140, 48
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  %143 = load i64*, i64** @cp, align 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp uge i64 %144, 48
  br i1 %145, label %146, label %160

146:                                              ; preds = %133
  %147 = load i64*, i64** @cp, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ule i64 %148, 55
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load i32, i32* %4, align 4
  %152 = shl i32 %151, 3
  %153 = zext i32 %152 to i64
  %154 = load i64*, i64** @cp, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** @cp, align 8
  %156 = load i64, i64* %154, align 8
  %157 = add i64 %153, %156
  %158 = sub i64 %157, 48
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %150, %146, %133
  br label %161

161:                                              ; preds = %160, %129, %120
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %186

163:                                              ; preds = %1
  %164 = load i64*, i64** @cp, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 -1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ult i64 %166, 32
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i64*, i64** @cp, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 -1
  %171 = load i64, i64* %170, align 8
  %172 = icmp uge i64 %171, 127
  br i1 %172, label %173, label %175

173:                                              ; preds = %168, %163
  %174 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %180

175:                                              ; preds = %168
  %176 = load i64*, i64** @cp, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 -1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %175, %173
  br label %181

181:                                              ; preds = %180, %16
  %182 = load i64*, i64** @cp, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 -1
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %161, %112, %51, %15, %14, %13, %12, %11, %10, %9
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @ones(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
