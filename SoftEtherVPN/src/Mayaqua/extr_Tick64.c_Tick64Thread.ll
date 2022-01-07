; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_Tick64Thread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_Tick64Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@TICK64_SPAN = common dso_local global i64 0, align 8
@tk64 = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Adjust Time: Tick = %I64u, Time = %I64u\0A\00", align 1
@MAX_ADJUST_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"NUM_ADJUST TIME: %u\0A\00", align 1
@TICK64_SPAN_WIN32 = common dso_local global i64 0, align 8
@halt_tick_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Tick64Thread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %205

18:                                               ; preds = %2
  %19 = call i32 (...) @UnixSetThreadPriorityRealtime()
  %20 = load i64, i64* @TICK64_SPAN, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %18, %202
  %22 = call i64 (...) @TickRealtime()
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sge i64 %33, 268435455
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = mul nsw i64 %51, 4294967296
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Lock(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %45
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  store i64 %73, i64* %10, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @Unlock(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %67
  %83 = call %struct.TYPE_8__* @ZeroMalloc(i32 16)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %11, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = call i8* (...) @SystemTime64()
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = call i32 @Add(i32 %101, %struct.TYPE_8__* %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @NoticeThreadInit(i32* %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %82, %67
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %5, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp sge i64 %110, 1000
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %196

115:                                              ; preds = %112, %106
  %116 = call i8* (...) @SystemTime64()
  %117 = ptrtoint i8* %116 to i64
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %137, label %123

123:                                              ; preds = %115
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load i64, i64* %10, align 8
  %134 = call i64 @Diff64(i64 %132, i64 %133)
  %135 = load i64, i64* %8, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %195

137:                                              ; preds = %123, %115
  %138 = call %struct.TYPE_8__* @ZeroMalloc(i32 16)
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %13, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @LockList(i32 %141)
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = call i32 @Add(i32 %151, %struct.TYPE_8__* %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %156, i64 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @LIST_NUM(i32 %163)
  %165 = load i64, i64* @MAX_ADJUST_TIME, align 8
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %137
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.TYPE_8__* @LIST_DATA(i32 %170, i32 1)
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %14, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %176 = call i32 @Delete(i32 %174, %struct.TYPE_8__* %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @LIST_NUM(i32 %179)
  %181 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %183 = call i32 @Free(%struct.TYPE_8__* %182)
  br label %184

184:                                              ; preds = %167, %137
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @UnlockList(i32 %187)
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %184, %123
  store i32 1, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %196

196:                                              ; preds = %195, %112
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tk64, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %205

202:                                              ; preds = %196
  %203 = load i64, i64* %8, align 8
  %204 = call i32 @SleepThread(i64 %203)
  br label %21

205:                                              ; preds = %17, %201
  ret void
}

declare dso_local i32 @UnixSetThreadPriorityRealtime(...) #1

declare dso_local i64 @TickRealtime(...) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i8* @SystemTime64(...) #1

declare dso_local i32 @Add(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local i64 @Diff64(i64, i64) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Debug(i8*, i64, ...) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32, i32) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @SleepThread(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
