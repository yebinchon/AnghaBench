; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_debug.c_dump.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_debug.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"%s, %10.10lu bytes (0x%8.8lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%4.4lx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i64, i8)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i32* %1, i8* %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  store i32 16, i32* %13, align 4
  %14 = load i8, i8* %10, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 64, i32* %13, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %20, i64 %21)
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %191, %17
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %196

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i8, i8* %10, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %27
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %39
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %56)
  br label %58

58:                                               ; preds = %55, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %27
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %185, %63
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br label %75

75:                                               ; preds = %69, %64
  %76 = phi i1 [ false, %64 ], [ %74, %69 ]
  br i1 %76, label %77, label %188

77:                                               ; preds = %75
  %78 = load i8, i8* %10, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %82, %83
  %85 = add i64 %84, 1
  %86 = load i64, i64* %9, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %81
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %90, %91
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %97, label %115

97:                                               ; preds = %88
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %99, %100
  %102 = add i64 %101, 1
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 2
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = sub i64 %109, %111
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %11, align 8
  br label %188

115:                                              ; preds = %97, %88, %81, %77
  %116 = load i32*, i32** %7, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %118, %119
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sge i32 %123, 32
  br i1 %124, label %125, label %142

125:                                              ; preds = %115
  %126 = load i8*, i8** %8, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = add i64 %127, %128
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp slt i32 %132, 128
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %136, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  br label %143

142:                                              ; preds = %125, %115
  br label %143

143:                                              ; preds = %142, %134
  %144 = phi i32 [ %141, %134 ], [ 46, %142 ]
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i8, i8* %10, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %143
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %150, %151
  %153 = add i64 %152, 2
  %154 = load i64, i64* %9, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %149
  %157 = load i8*, i8** %8, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %158, %159
  %161 = add i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 13
  br i1 %165, label %166, label %184

166:                                              ; preds = %156
  %167 = load i8*, i8** %8, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = add i64 %168, %169
  %171 = add i64 %170, 2
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %184

176:                                              ; preds = %166
  %177 = load i64, i64* %12, align 8
  %178 = add i64 %177, 3
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = sub i64 %178, %180
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %11, align 8
  br label %188

184:                                              ; preds = %166, %156, %149, %143
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %12, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %12, align 8
  br label %64

188:                                              ; preds = %176, %107, %75
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @fputc(i8 signext 10, i32* %189)
  br label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %11, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %11, align 8
  br label %23

196:                                              ; preds = %23
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @fflush(i32* %197)
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
