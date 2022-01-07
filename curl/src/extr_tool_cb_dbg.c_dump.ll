; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_dbg.c_dump.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_dbg.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_ASCII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s%s, %zu bytes (0x%zx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%04zx: \00", align 1
@TRACE_BIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@UNPRINTABLE_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i8*, i64, i64, i32)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i8* %1, i32* %2, i8* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 16, i32* %17, align 4
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @TRACE_ASCII, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 64, i32* %17, align 4
  br label %22

22:                                               ; preds = %21, %7
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i64 %26, i64 %27)
  store i64 0, i64* %15, align 8
  br label %29

29:                                               ; preds = %201, %22
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %206

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @TRACE_BIN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  store i64 0, i64* %16, align 8
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i64, i64* %16, align 8
  %43 = load i32, i32* %17, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %16, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %12, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32*, i32** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %55, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %46
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %63)
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %16, align 8
  br label %41

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69, %33
  store i64 0, i64* %16, align 8
  br label %71

71:                                               ; preds = %195, %70
  %72 = load i64, i64* %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %79, %80
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi i1 [ false, %71 ], [ %81, %76 ]
  br i1 %83, label %84, label %198

84:                                               ; preds = %82
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @TRACE_ASCII, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %84
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %89, %90
  %92 = add i64 %91, 1
  %93 = load i64, i64* %12, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %88
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %97, %98
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 13
  br i1 %103, label %104, label %122

104:                                              ; preds = %95
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %106, %107
  %109 = add i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load i64, i64* %16, align 8
  %116 = add i64 %115, 2
  %117 = load i32, i32* %17, align 4
  %118 = zext i32 %117 to i64
  %119 = sub i64 %116, %118
  %120 = load i64, i64* %15, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %15, align 8
  br label %198

122:                                              ; preds = %104, %95, %88, %84
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %126, %127
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sge i32 %131, 32
  br i1 %132, label %133, label %150

133:                                              ; preds = %122
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp slt i32 %140, 128
  br i1 %141, label %142, label %150

142:                                              ; preds = %133
  %143 = load i8*, i8** %11, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* %16, align 8
  %146 = add i64 %144, %145
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  br label %153

150:                                              ; preds = %133, %122
  %151 = load i8, i8* @UNPRINTABLE_CHAR, align 1
  %152 = zext i8 %151 to i32
  br label %153

153:                                              ; preds = %150, %142
  %154 = phi i32 [ %149, %142 ], [ %152, %150 ]
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @TRACE_ASCII, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %194

159:                                              ; preds = %153
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %160, %161
  %163 = add i64 %162, 2
  %164 = load i64, i64* %12, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %159
  %167 = load i8*, i8** %11, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %16, align 8
  %170 = add i64 %168, %169
  %171 = add i64 %170, 1
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 13
  br i1 %175, label %176, label %194

176:                                              ; preds = %166
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %15, align 8
  %179 = load i64, i64* %16, align 8
  %180 = add i64 %178, %179
  %181 = add i64 %180, 2
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 10
  br i1 %185, label %186, label %194

186:                                              ; preds = %176
  %187 = load i64, i64* %16, align 8
  %188 = add i64 %187, 3
  %189 = load i32, i32* %17, align 4
  %190 = zext i32 %189 to i64
  %191 = sub i64 %188, %190
  %192 = load i64, i64* %15, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %15, align 8
  br label %198

194:                                              ; preds = %176, %166, %159, %153
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %16, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %16, align 8
  br label %71

198:                                              ; preds = %186, %114, %82
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @fputc(i8 signext 10, i32* %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %17, align 4
  %203 = zext i32 %202 to i64
  %204 = load i64, i64* %15, align 8
  %205 = add i64 %204, %203
  store i64 %205, i64* %15, align 8
  br label %29

206:                                              ; preds = %29
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @fflush(i32* %207)
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
