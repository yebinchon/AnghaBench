; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiFarmServ.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiFarmServ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64*, i32, i32, i32, i64, i64, i64, i32, i32*, i32, i64, i64, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@FARM_DEFAULT_WEIGHT = common dso_local global i64 0, align 8
@SERVER_MAX_SESSIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"LS_FARM_SERV_START\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Farm Member %s Connected. IP: %s\0A\00", align 1
@SERVER_CONTROL_TCP_TIMEOUT = common dso_local global i32 0, align 4
@CompareHubList = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"LS_FARM_SERV_END\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiFarmServ(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i64 %3, i64 %4, i64* %5, i8* %6, i64 %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64* %5, i64** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %28 = load i32, i32* @MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %24, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %25, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = icmp eq %struct.TYPE_18__* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %10
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %36 = icmp eq %struct.TYPE_17__* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %13, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %15, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** %16, align 8
  %45 = icmp eq i64* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %17, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %40, %37, %34, %10
  store i32 1, i32* %26, align 4
  br label %203

50:                                               ; preds = %46
  %51 = load i64, i64* %19, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* @FARM_DEFAULT_WEIGHT, align 8
  store i64 %54, i64* %19, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i64, i64* %20, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* @SERVER_MAX_SESSIONS, align 8
  store i64 %59, i64* %20, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = call i64 @IPToUINT(i32* %65)
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = trunc i64 %29 to i32
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @IPToStr32(i8* %31, i32 %68, i64 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 (i32, i8*, i8*, ...) @SLog(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %74)
  %76 = call i32* (...) @NewPack()
  store i32* %76, i32** %21, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @HttpServerSend(%struct.TYPE_17__* %77, i32* %78)
  %80 = load i32*, i32** %21, align 8
  %81 = call i32 @FreePack(i32* %80)
  %82 = trunc i64 %29 to i32
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @IPToStr32(i8* %31, i32 %82, i64 %83)
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %31)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %88 = load i32, i32* @SERVER_CONTROL_TCP_TIMEOUT, align 4
  %89 = call i32 @SetTimeout(%struct.TYPE_17__* %87, i32 %88)
  %90 = call %struct.TYPE_19__* @ZeroMalloc(i32 96)
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %22, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 11
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 10
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %16, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  store i64* %102, i64** %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @StrCpy(i32 %107, i32 4, i8* %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 8
  store i32* %110, i32** %112, align 8
  %113 = call i32 (...) @SystemTime64()
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 6
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @CompareHubList, align 4
  %123 = call i32 @NewList(i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 4
  store i64 %126, i64* %128, align 8
  %129 = call i32 (...) @NewQueue()
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = call i32 (...) @NewEvent()
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @LockList(i32 %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %143 = call i32 @Add(i32 %141, %struct.TYPE_19__* %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @UnlockList(i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %151 = call i32 @SiFarmServMain(%struct.TYPE_18__* %148, %struct.TYPE_17__* %149, %struct.TYPE_19__* %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @LockList(i32 %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %160 = call i32 @Delete(i32 %158, %struct.TYPE_19__* %159)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @UnlockList(i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ReleaseQueue(i32 %167)
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ReleaseEvent(i32 %171)
  store i64 0, i64* %23, align 8
  br label %173

173:                                              ; preds = %188, %67
  %174 = load i64, i64* %23, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @LIST_NUM(i32 %177)
  %179 = icmp slt i64 %174, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %173
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i64, i64* %23, align 8
  %185 = call %struct.TYPE_19__* @LIST_DATA(i32 %183, i64 %184)
  store %struct.TYPE_19__* %185, %struct.TYPE_19__** %27, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %187 = call i32 @Free(%struct.TYPE_19__* %186)
  br label %188

188:                                              ; preds = %180
  %189 = load i64, i64* %23, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %23, align 8
  br label %173

191:                                              ; preds = %173
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ReleaseList(i32 %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %197 = call i32 @Free(%struct.TYPE_19__* %196)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i8*, i8** %17, align 8
  %202 = call i32 (i32, i8*, i8*, ...) @SLog(i32 %200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %201)
  store i32 0, i32* %26, align 4
  br label %203

203:                                              ; preds = %191, %49
  %204 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %26, align 4
  switch i32 %205, label %207 [
    i32 0, label %206
    i32 1, label %206
  ]

206:                                              ; preds = %203, %203
  ret void

207:                                              ; preds = %203
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IPToUINT(i32*) #2

declare dso_local i32 @IPToStr32(i8*, i32, i64) #2

declare dso_local i32 @SLog(i32, i8*, i8*, ...) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @HttpServerSend(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @Debug(i8*, i8*, i8*) #2

declare dso_local i32 @SetTimeout(%struct.TYPE_17__*, i32) #2

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32 @NewList(i32) #2

declare dso_local i32 @NewQueue(...) #2

declare dso_local i32 @NewEvent(...) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @Add(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @SiFarmServMain(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*) #2

declare dso_local i32 @Delete(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseQueue(i32) #2

declare dso_local i32 @ReleaseEvent(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Free(%struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
