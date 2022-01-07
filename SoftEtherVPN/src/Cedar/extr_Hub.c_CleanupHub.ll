; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_CleanupHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_CleanupHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CleanupHub(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load i32, i32* @MAX_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %194

14:                                               ; preds = %1
  %15 = trunc i64 %8 to i32
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 21
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i32 @StrCpy(i8* %10, i32 %15, %struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 28
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @StopHubWatchDog(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @FreeAccessList(%struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call i32 @Free(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 26
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @FreeBuf(i32 %41)
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i32 @ReleaseAllLink(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 25
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DeleteHubDb(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 24
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ReleaseCedar(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 23
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DeleteLock(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 22
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DeleteLock(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 21
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @Free(%struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ReleaseList(i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 19
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ReleaseHashList(i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 18
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ReleaseList(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 17
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ReleaseList(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ReleaseList(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DeleteCounter(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DeleteCounter(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @DeleteCounter(i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @DeleteCounter(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @FreeTraffic(i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @FreeTraffic(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 9
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = call i32 @Free(%struct.TYPE_9__* %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i32 @Free(%struct.TYPE_9__* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DeleteLock(i32 %120)
  store i64 0, i64* %3, align 8
  br label %122

122:                                              ; preds = %136, %43
  %123 = load i64, i64* %3, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @LIST_NUM(i32 %126)
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %3, align 8
  %134 = call %struct.TYPE_9__* @LIST_DATA(i32 %132, i64 %133)
  %135 = call i32 @Free(%struct.TYPE_9__* %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i64, i64* %3, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ReleaseList(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @DeleteLock(i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @FreeLog(i32 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @FreeLog(i32 %154)
  store i64 0, i64* %3, align 8
  br label %156

156:                                              ; preds = %170, %139
  %157 = load i64, i64* %3, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @LIST_NUM(i32 %160)
  %162 = icmp slt i64 %157, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %3, align 8
  %168 = call %struct.TYPE_9__* @LIST_DATA(i32 %166, i64 %167)
  %169 = call i32 @Free(%struct.TYPE_9__* %168)
  br label %170

170:                                              ; preds = %163
  %171 = load i64, i64* %3, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %3, align 8
  br label %156

173:                                              ; preds = %156
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ReleaseList(i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = icmp ne %struct.TYPE_9__* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %173
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = call i32 @Free(%struct.TYPE_9__* %185)
  br label %187

187:                                              ; preds = %182, %173
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @FreeUserList(i32 %190)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = call i32 @Free(%struct.TYPE_9__* %192)
  store i32 0, i32* %6, align 4
  br label %194

194:                                              ; preds = %187, %13
  %195 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %6, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @StopHubWatchDog(%struct.TYPE_9__*) #2

declare dso_local i32 @FreeAccessList(%struct.TYPE_9__*) #2

declare dso_local i32 @Free(%struct.TYPE_9__*) #2

declare dso_local i32 @FreeBuf(i32) #2

declare dso_local i32 @ReleaseAllLink(%struct.TYPE_9__*) #2

declare dso_local i32 @DeleteHubDb(i32) #2

declare dso_local i32 @ReleaseCedar(i32) #2

declare dso_local i32 @DeleteLock(i32) #2

declare dso_local i32 @ReleaseList(i32) #2

declare dso_local i32 @ReleaseHashList(i32) #2

declare dso_local i32 @DeleteCounter(i32) #2

declare dso_local i32 @FreeTraffic(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @FreeLog(i32) #2

declare dso_local i32 @FreeUserList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
