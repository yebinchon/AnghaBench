; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_fifo.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_fifo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to allocate memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %8 = call %struct.TYPE_13__* @av_fifo_alloc(i32 52)
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i32 @av_fifo_space(%struct.TYPE_13__* %10)
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @av_fifo_generic_write(%struct.TYPE_13__* %15, i32* %3, i32 4, i32* null)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @av_fifo_size(%struct.TYPE_13__* %21)
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %45, %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @av_fifo_peek2(%struct.TYPE_13__* %34, i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %7, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %29

48:                                               ; preds = %29
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = call i32 @av_fifo_size(%struct.TYPE_13__* %50)
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %69, %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32 @av_fifo_generic_peek_at(%struct.TYPE_13__* %60, i32* %4, i32 %64, i32 4, i32* null)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %55

72:                                               ; preds = %55
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = call i32 @av_fifo_size(%struct.TYPE_13__* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32* @malloc(i32 %76)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %72
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @av_fifo_generic_peek(%struct.TYPE_13__* %85, i32* %86, i32 %87, i32* null)
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = udiv i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %105, %84
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %93

108:                                              ; preds = %93
  %109 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %120, %108
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = call i32 @av_fifo_size(%struct.TYPE_13__* %111)
  %113 = sext i32 %112 to i64
  %114 = icmp uge i64 %113, 4
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = call i32 @av_fifo_generic_read(%struct.TYPE_13__* %116, i32* %4, i32 4, i32* null)
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %110

123:                                              ; preds = %110
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = call i32 @av_fifo_reset(%struct.TYPE_13__* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  store i32 -6, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i32 -6, i32* %130, align 4
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %139, %123
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = call i32 @av_fifo_space(%struct.TYPE_13__* %132)
  %134 = sext i32 %133 to i64
  %135 = icmp uge i64 %134, 4
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %138 = call i32 @av_fifo_generic_write(%struct.TYPE_13__* %137, i32* %3, i32 4, i32* null)
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %131

142:                                              ; preds = %131
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %144 = call i32 @av_fifo_size(%struct.TYPE_13__* %143)
  %145 = sext i32 %144 to i64
  %146 = udiv i64 %145, 4
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %162, %142
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @av_fifo_generic_peek_at(%struct.TYPE_13__* %153, i32* %4, i32 %157, i32 4, i32* null)
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %152
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %148

165:                                              ; preds = %148
  %166 = call i32 @putchar(i8 signext 10)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = call i32 @av_fifo_grow(%struct.TYPE_13__* %167, i32 60)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %170 = call i32 @av_fifo_size(%struct.TYPE_13__* %169)
  %171 = sext i32 %170 to i64
  %172 = udiv i64 %171, 4
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %183, %165
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = call i32 @av_fifo_space(%struct.TYPE_13__* %176)
  %178 = sext i32 %177 to i64
  %179 = icmp uge i64 %178, 4
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %182 = call i32 @av_fifo_generic_write(%struct.TYPE_13__* %181, i32* %3, i32 4, i32* null)
  br label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %175

186:                                              ; preds = %175
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %188 = call i32 @av_fifo_size(%struct.TYPE_13__* %187)
  %189 = sext i32 %188 to i64
  %190 = udiv i64 %189, 4
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %206, %186
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %192
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = call i32 @av_fifo_generic_peek_at(%struct.TYPE_13__* %197, i32* %4, i32 %201, i32 4, i32* null)
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %4, align 4
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %3, align 4
  br label %192

209:                                              ; preds = %192
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %211 = call i32 @av_fifo_free(%struct.TYPE_13__* %210)
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @free(i32* %212)
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @av_fifo_alloc(i32) #1

declare dso_local i32 @av_fifo_space(%struct.TYPE_13__*) #1

declare dso_local i32 @av_fifo_generic_write(%struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @av_fifo_size(%struct.TYPE_13__*) #1

declare dso_local i64 @av_fifo_peek2(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_fifo_generic_peek_at(%struct.TYPE_13__*, i32*, i32, i32, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @av_fifo_generic_peek(%struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @av_fifo_generic_read(%struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @av_fifo_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @av_fifo_grow(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_fifo_free(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
