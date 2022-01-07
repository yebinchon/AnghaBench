; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-disasm.c_q68_trace.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-disasm.c_q68_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32*, i32* }

@total_cycles = common dso_local global i64 0, align 8
@state = common dso_local global %struct.TYPE_4__* null, align 8
@trace_start = common dso_local global i64 0, align 8
@trace_stop = common dso_local global i64 0, align 8
@logfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"gzip -3 >q68.log.gz\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to open trace logfile\00", align 1
@_IOFBF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%04X\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [144 x i8] c"%06X: %-14s  %-26s  SR=%04X %c%c%c%c%c  [%10llu]\0A    D: %08X %08X %08X %08X %08X %08X %08X %08X\0A    A: %08X %08X %08X %08X %08X %08X %08X %08X\0A\00", align 1
@SR_X = common dso_local global i32 0, align 4
@SR_N = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q68_trace() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = load i64, i64* @total_cycles, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @trace_start, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %226

16:                                               ; preds = %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @trace_stop, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** @logfile, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** @logfile, align 8
  %25 = call i32 @pclose(i32* %24)
  store i32* null, i32** @logfile, align 8
  br label %26

26:                                               ; preds = %23, %20
  br label %225

27:                                               ; preds = %16
  %28 = load i32*, i32** @logfile, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = call i32* @popen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** @logfile, align 8
  %32 = load i32*, i32** @logfile, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @UNLIKELY(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %226

40:                                               ; preds = %30
  %41 = load i32*, i32** @logfile, align 8
  %42 = load i32, i32* @_IOFBF, align 4
  %43 = call i32 @setvbuf(i32* %41, i32* null, i32 %42, i32 65536)
  br label %44

44:                                               ; preds = %40, %27
  store i32 1, i32* %2, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @q68_disassemble(%struct.TYPE_4__* %45, i32 %48, i32* %2)
  store i8* %49, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 3, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %90, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 95
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ false, %54 ], [ %61, %58 ]
  br i1 %63, label %64, label %93

64:                                               ; preds = %62
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 100, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %80, %82
  %84 = call i32 @READU16(%struct.TYPE_4__* %77, i32 %83)
  %85 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %54

93:                                               ; preds = %62
  %94 = load i32*, i32** @logfile, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SR_X, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 88, i32 46
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SR_N, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 78, i32 46
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SR_Z, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 90, i32 46
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SR_V, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 86, i32 46
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SR_C, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 67, i32 46
  %143 = load i64, i64* %1, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 7
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 5
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 6
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 7
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.6, i64 0, i64 0), i32 %97, i8* %98, i8* %99, i32 %102, i32 %110, i32 %118, i32 %126, i32 %134, i32 %142, i64 %143, i32 %148, i32 %153, i32 %158, i32 %163, i32 %168, i32 %173, i32 %178, i32 %183, i32 %188, i32 %193, i32 %198, i32 %203, i32 %208, i32 %213, i32 %218, i32 %223)
  br label %225

225:                                              ; preds = %93, %26
  br label %226

226:                                              ; preds = %38, %225, %15
  ret void
}

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i8* @q68_disassemble(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @READU16(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
