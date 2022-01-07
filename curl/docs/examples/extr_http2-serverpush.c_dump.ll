; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_dump.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s, %lu bytes (0x%lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%4.4lx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i8)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i8* %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  store i32 16, i32* %11, align 4
  %12 = load i8, i8* %8, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 64, i32* %11, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18, i64 %19)
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %189, %15
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %194

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i8, i8* %8, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %46, %47
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %37
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %32

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60, %25
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %183, %61
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %70, %71
  br label %73

73:                                               ; preds = %67, %62
  %74 = phi i1 [ false, %62 ], [ %72, %67 ]
  br i1 %74, label %75, label %186

75:                                               ; preds = %73
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %80, %81
  %83 = add i64 %82, 1
  %84 = load i64, i64* %7, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %79
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 13
  br i1 %94, label %95, label %113

95:                                               ; preds = %86
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %97, %98
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 2
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = sub i64 %107, %109
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %186

113:                                              ; preds = %95, %86, %79, %75
  %114 = load i32, i32* @stderr, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %116, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %140

123:                                              ; preds = %113
  %124 = load i8*, i8** %6, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %125, %126
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %130, 128
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %134, %135
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  br label %141

140:                                              ; preds = %123, %113
  br label %141

141:                                              ; preds = %140, %132
  %142 = phi i32 [ %139, %132 ], [ 46, %140 ]
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i8, i8* %8, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %141
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %148, %149
  %151 = add i64 %150, 2
  %152 = load i64, i64* %7, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %147
  %155 = load i8*, i8** %6, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %156, %157
  %159 = add i64 %158, 1
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 13
  br i1 %163, label %164, label %182

164:                                              ; preds = %154
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %166, %167
  %169 = add i64 %168, 2
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, 3
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = sub i64 %176, %178
  %180 = load i64, i64* %9, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %9, align 8
  br label %186

182:                                              ; preds = %164, %154, %147, %141
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %10, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %10, align 8
  br label %62

186:                                              ; preds = %174, %105, %73
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 @fputc(i8 signext 10, i32 %187)
  br label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %11, align 4
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %9, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %9, align 8
  br label %21

194:                                              ; preds = %21
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
