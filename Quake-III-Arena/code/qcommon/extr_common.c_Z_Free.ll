; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_Free.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Z_Free: NULL pointer\00", align 1
@ZONEID = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Z_Free: freed a pointer without ZONEID\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Z_Free: freed a freed pointer\00", align 1
@TAG_STATIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Z_Free: memory block wrote past end\00", align 1
@TAG_SMALL = common dso_local global i64 0, align 8
@smallzone = common dso_local global %struct.TYPE_5__* null, align 8
@mainzone = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Z_Free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERR_DROP, align 4
  %10 = call i32 @Com_Error(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = getelementptr inbounds i32, i32* %13, i64 -40
  %15 = bitcast i32* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ZONEID, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @ERR_FATAL, align 4
  %23 = call i32 @Com_Error(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ERR_FATAL, align 4
  %31 = call i32 @Com_Error(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TAG_STATIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %157

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = bitcast %struct.TYPE_6__* %40 to i32*
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = getelementptr inbounds i32, i32* %46, i64 -4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ZONEID, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @ERR_FATAL, align 4
  %53 = call i32 @Com_Error(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TAG_SMALL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smallzone, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %5, align 8
  br label %64

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mainzone, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %5, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i8*, i8** %2, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 40
  %78 = trunc i64 %77 to i32
  %79 = call i32 @Com_Memset(i8* %72, i32 170, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %4, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %64
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = icmp eq %struct.TYPE_6__* %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %89
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %115, align 8
  br label %116

116:                                              ; preds = %112, %89
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %3, align 8
  br label %118

118:                                              ; preds = %116, %64
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %4, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %118
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = icmp eq %struct.TYPE_6__* %147, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %129
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %155, align 8
  br label %156

156:                                              ; preds = %152, %129
  br label %157

157:                                              ; preds = %38, %156, %118
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Com_Memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
