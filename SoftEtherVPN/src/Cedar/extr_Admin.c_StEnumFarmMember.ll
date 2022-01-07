; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumFarmMember.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumFarmMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i64 }

@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumFarmMember(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = call i32 @FreeRpcEnumFarm(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i32 @Zero(%struct.TYPE_16__* %19, i32 16)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %27, i64* %3, align 8
  br label %183

28:                                               ; preds = %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @Zero(%struct.TYPE_16__* %29, i32 16)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @LockList(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @LIST_NUM(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 80, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_15__* @ZeroMalloc(i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %174, %28
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %177

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call %struct.TYPE_17__* @LIST_DATA(i32 %61, i64 %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %9, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %67
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %10, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = call i32 @POINTER_TO_KEY(%struct.TYPE_17__* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 9
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %58
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @TickToTime(i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 16777343, i32* %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @GetMachineName(i32 %93, i32 4)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @Count(i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @Count(i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @Count(i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @Count(i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  br label %167

124:                                              ; preds = %58
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @StrCpy(i32 %137, i32 4, i32 %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %124, %82
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @LIST_NUM(i32 %170)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %8, align 8
  br label %51

177:                                              ; preds = %51
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @UnlockList(i32 %180)
  %182 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %182, i64* %3, align 8
  br label %183

183:                                              ; preds = %177, %26
  %184 = load i64, i64* %3, align 8
  ret i64 %184
}

declare dso_local i32 @FreeRpcEnumFarm(%struct.TYPE_16__*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i8* @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_15__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @POINTER_TO_KEY(%struct.TYPE_17__*) #1

declare dso_local i32 @TickToTime(i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i8* @Count(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
