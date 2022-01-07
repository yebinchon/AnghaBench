; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtEnumAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtEnumAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@PROXY_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtEnumAccount(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %183

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LockList(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @LIST_NUM(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8* @ZeroMalloc(i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_14__**
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store %struct.TYPE_14__** %33, %struct.TYPE_14__*** %35, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %175, %15
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %178

43:                                               ; preds = %36
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.TYPE_17__* @LIST_DATA(i32 %46, i64 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %7, align 8
  %49 = call i8* @ZeroMalloc(i32 64)
  %50 = bitcast i8* %49 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %54, i64 %55
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @UniStrCpy(i32 %59, i32 4, i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @StrCpy(i32 %68, i32 4, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @StrCpy(i32 %77, i32 4, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @StrCpy(i32 %93, i32 4, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PROXY_DIRECT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %43
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @StrCpy(i32 %108, i32 4, i32 %113)
  br label %115

115:                                              ; preds = %105, %43
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = icmp eq %struct.TYPE_12__* %123, null
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %115
  br label %140

134:                                              ; preds = %115
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  br label %140

140:                                              ; preds = %134, %133
  %141 = phi i32 [ 0, %133 ], [ %139, %134 ]
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @StrCpy(i32 %153, i32 4, i32 %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %140
  %176 = load i64, i64* %6, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %6, align 8
  br label %36

178:                                              ; preds = %36
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @UnlockList(i32 %181)
  store i32 1, i32* %3, align 4
  br label %183

183:                                              ; preds = %178, %14
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
