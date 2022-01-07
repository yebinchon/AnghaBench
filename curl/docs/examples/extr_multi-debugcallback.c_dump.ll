; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_dump.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"%s, %10.10lu bytes (0x%8.8lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%4.4lx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i64, i32)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 16, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
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

23:                                               ; preds = %189, %17
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %194

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
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

64:                                               ; preds = %183, %63
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
  br i1 %76, label %77, label %186

77:                                               ; preds = %75
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %77
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %81, %82
  %84 = add i64 %83, 1
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %89, %90
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 13
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = add i64 %98, %99
  %101 = add i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 10
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 2
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = sub i64 %108, %110
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %11, align 8
  br label %186

114:                                              ; preds = %96, %87, %80, %77
  %115 = load i32*, i32** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add i64 %117, %118
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sge i32 %122, 32
  br i1 %123, label %124, label %141

124:                                              ; preds = %114
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %126, %127
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp slt i32 %131, 128
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  br label %142

141:                                              ; preds = %124, %114
  br label %142

142:                                              ; preds = %141, %133
  %143 = phi i32 [ %140, %133 ], [ 46, %141 ]
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %142
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %148, %149
  %151 = add i64 %150, 2
  %152 = load i64, i64* %9, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %147
  %155 = load i8*, i8** %8, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %12, align 8
  %158 = add i64 %156, %157
  %159 = add i64 %158, 1
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 13
  br i1 %163, label %164, label %182

164:                                              ; preds = %154
  %165 = load i8*, i8** %8, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %12, align 8
  %168 = add i64 %166, %167
  %169 = add i64 %168, 2
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 3
  %177 = load i32, i32* %13, align 4
  %178 = zext i32 %177 to i64
  %179 = sub i64 %176, %178
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %11, align 8
  br label %186

182:                                              ; preds = %164, %154, %147, %142
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %12, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %64

186:                                              ; preds = %174, %106, %75
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @fputc(i8 signext 10, i32* %187)
  br label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %11, align 8
  br label %23

194:                                              ; preds = %23
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @fflush(i32* %195)
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
