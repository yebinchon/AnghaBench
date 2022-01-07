; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3IfThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3IfThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i8*, i32, i32*, %struct.TYPE_24__*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_23__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@L3_USERNAME = common dso_local global i8* null, align 8
@CONNECTION_HUB_LAYER3 = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SID-L3-%s-%u\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SID-L3-%s-%s-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3IfThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 1, i32* %13, align 4
  br label %170

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %5, align 8
  %33 = trunc i64 %22 to i32
  %34 = load i8*, i8** @L3_USERNAME, align 8
  %35 = call i32 @StrCpy(i8* %23, i32 %33, i8* %34)
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = icmp ne %struct.TYPE_21__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = trunc i64 %22 to i32
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @StrCat(i8* %23, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call %struct.TYPE_25__* @NewServerConnection(%struct.TYPE_18__* %53, i32* null, i32* %54)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %6, align 8
  %56 = load i32, i32* @CONNECTION_HUB_LAYER3, align 4
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = call i32 (...) @GetDefaultPolicy()
  %60 = call %struct.TYPE_23__* @ClonePolicy(i32 %59)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %8, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = call %struct.TYPE_22__* @NewServerSession(%struct.TYPE_18__* %67, %struct.TYPE_25__* %68, %struct.TYPE_19__* %71, i8* %23, %struct.TYPE_23__* %72)
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %7, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %76, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = call i32 @ReleaseConnection(%struct.TYPE_25__* %77)
  %79 = trunc i64 %15 to i32
  %80 = call i32 @GetMachineHostName(i8* %17, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %48
  %93 = trunc i64 %19 to i32
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @Inc(i32 %105)
  %107 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Format(i8* %20, i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %106)
  br label %122

108:                                              ; preds = %48
  %109 = trunc i64 %19 to i32
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @Inc(i32 %119)
  %121 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Format(i8* %20, i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %114, i32 %120)
  br label %122

122:                                              ; preds = %108, %92
  %123 = trunc i64 %19 to i32
  %124 = call i32 @ConvertSafeFileName(i8* %20, i32 %123, i8* %20)
  %125 = call i32 @StrUpper(i8* %20)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @Free(i32* %128)
  %130 = call i8* @CopyStr(i8* %20)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 4
  store %struct.TYPE_24__* %136, %struct.TYPE_24__** %138, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %122
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @Free(i32* %146)
  br label %148

148:                                              ; preds = %143, %122
  %149 = call i8* @CopyStr(i8* %23)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @StrCpy(i8* %155, i32 8, i8* %23)
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %159, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @AddRef(i32 %162)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @NoticeThreadInit(i32* %164)
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %167 = call i32 @SessionMain(%struct.TYPE_22__* %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %169 = call i32 @ReleaseSession(%struct.TYPE_22__* %168)
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %148, %29
  %171 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %13, align 4
  switch i32 %172, label %174 [
    i32 0, label %173
    i32 1, label %173
  ]

173:                                              ; preds = %170, %170
  ret void

174:                                              ; preds = %170
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i32) #2

declare dso_local %struct.TYPE_25__* @NewServerConnection(%struct.TYPE_18__*, i32*, i32*) #2

declare dso_local %struct.TYPE_23__* @ClonePolicy(i32) #2

declare dso_local i32 @GetDefaultPolicy(...) #2

declare dso_local %struct.TYPE_22__* @NewServerSession(%struct.TYPE_18__*, %struct.TYPE_25__*, %struct.TYPE_19__*, i8*, %struct.TYPE_23__*) #2

declare dso_local i32 @ReleaseConnection(%struct.TYPE_25__*) #2

declare dso_local i32 @GetMachineHostName(i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @Inc(i32) #2

declare dso_local i32 @ConvertSafeFileName(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i8* @CopyStr(i8*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @SessionMain(%struct.TYPE_22__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
