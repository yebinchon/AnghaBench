; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_LinkPaPutPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_LinkPaPutPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i32, i8*, %struct.TYPE_12__*, i64*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LinkPaPutPacket(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %8, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %204

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 6
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i1 [ true, %31 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %10, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %11, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = srem i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %42
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @GetQueueNum(i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = sub nsw i32 %66, %70
  store i32 %71, i32* %15, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @CedarAddQueueBudget(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %60, %42
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %139

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32* @NewBlock(i8* %87, i8* %88, i32 0)
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @LockQueue(i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @GetQueueNum(i32 %104)
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = sub nsw i32 %107, %111
  store i32 %112, i32* %17, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @CedarAddQueueBudget(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %95, %90
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @CedarGetFifoBudgetBalance(i32 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @FreeBlock(i32* %131)
  br label %137

133:                                              ; preds = %124
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @InsertReceivedBlockToQueue(%struct.TYPE_14__* %134, i32* %135, i32 1)
  br label %137

137:                                              ; preds = %133, %130
  br label %138

138:                                              ; preds = %137, %121
  br label %198

139:                                              ; preds = %80
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @GetQueueNum(i32 %142)
  store i8* %143, i8** %18, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = sub nsw i32 %145, %149
  store i32 %150, i32* %19, align 4
  %151 = load i8*, i8** %18, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @CedarAddQueueBudget(i32 %156, i32 %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %139
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @UnlockQueue(i32 %168)
  br label %170

170:                                              ; preds = %163, %139
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @Cancel(i32 %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %197

179:                                              ; preds = %170
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = icmp ne %struct.TYPE_10__* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (...) @YieldCpu()
  br label %197

197:                                              ; preds = %195, %186, %179, %170
  br label %198

198:                                              ; preds = %197, %138
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %202, %30
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i8* @GetQueueNum(i32) #1

declare dso_local i32 @CedarAddQueueBudget(i32, i32) #1

declare dso_local i32* @NewBlock(i8*, i8*, i32) #1

declare dso_local i32 @LockQueue(i32) #1

declare dso_local i64 @CedarGetFifoBudgetBalance(i32) #1

declare dso_local i32 @FreeBlock(i32*) #1

declare dso_local i32 @InsertReceivedBlockToQueue(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @UnlockQueue(i32) #1

declare dso_local i32 @Cancel(i32) #1

declare dso_local i32 @YieldCpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
