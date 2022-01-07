; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_testtrace.c_libtest_debug_dump.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_testtrace.c_libtest_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"%s%s, %zu bytes (0x%zx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%04zx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i8*, i64, i32)* @libtest_debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libtest_debug_dump(i8* %0, i8* %1, i32* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 16, i32* %15, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 64, i32* %15, align 4
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i64 %23, i64 %24)
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %192, %19
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %197

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %30
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i64, i64* %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %42
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %59)
  br label %61

61:                                               ; preds = %58, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %14, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %14, align 8
  br label %37

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %30
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %186, %66
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* %11, align 8
  %77 = icmp ult i64 %75, %76
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi i1 [ false, %67 ], [ %77, %72 ]
  br i1 %79, label %80, label %189

80:                                               ; preds = %78
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %84, %85
  %87 = add i64 %86, 1
  %88 = load i64, i64* %11, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %83
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %99, label %117

99:                                               ; preds = %90
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %101, %102
  %104 = add i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 2
  %112 = load i32, i32* %15, align 4
  %113 = zext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %13, align 8
  br label %189

117:                                              ; preds = %99, %90, %83, %80
  %118 = load i32*, i32** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sge i32 %125, 32
  br i1 %126, label %127, label %144

127:                                              ; preds = %117
  %128 = load i8*, i8** %10, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %129, %130
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp slt i32 %134, 128
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = add i64 %138, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  br label %145

144:                                              ; preds = %127, %117
  br label %145

145:                                              ; preds = %144, %136
  %146 = phi i32 [ %143, %136 ], [ 46, %144 ]
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %185

150:                                              ; preds = %145
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %151, %152
  %154 = add i64 %153, 2
  %155 = load i64, i64* %11, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %150
  %158 = load i8*, i8** %10, align 8
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %159, %160
  %162 = add i64 %161, 1
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 13
  br i1 %166, label %167, label %185

167:                                              ; preds = %157
  %168 = load i8*, i8** %10, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %14, align 8
  %171 = add i64 %169, %170
  %172 = add i64 %171, 2
  %173 = getelementptr inbounds i8, i8* %168, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 10
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load i64, i64* %14, align 8
  %179 = add i64 %178, 3
  %180 = load i32, i32* %15, align 4
  %181 = zext i32 %180 to i64
  %182 = sub i64 %179, %181
  %183 = load i64, i64* %13, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %13, align 8
  br label %189

185:                                              ; preds = %167, %157, %150, %145
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %14, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %14, align 8
  br label %67

189:                                              ; preds = %177, %109, %78
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @fputc(i8 signext 10, i32* %190)
  br label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %15, align 4
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %13, align 8
  %196 = add i64 %195, %194
  store i64 %196, i64* %13, align 8
  br label %26

197:                                              ; preds = %26
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @fflush(i32* %198)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
