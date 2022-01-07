; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_mime_subparts_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_mime_subparts_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"--\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @mime_subparts_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mime_subparts_read(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  br label %17

17:                                               ; preds = %113, %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %17
  store i64 0, i64* %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %112 [
    i32 134, label %29
    i32 133, label %29
    i32 132, label %41
    i32 131, label %55
    i32 130, label %80
    i32 129, label %110
  ]

29:                                               ; preds = %20, %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @mimesetstate(%struct.TYPE_9__* %31, i32 132, %struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %38, align 4
  br label %113

41:                                               ; preds = %20
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @readback_bytes(%struct.TYPE_9__* %43, i8* %44, i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = call i32 @mimesetstate(%struct.TYPE_9__* %51, i32 131, %struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %49, %41
  br label %113

55:                                               ; preds = %20
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i64 @readback_bytes(%struct.TYPE_9__* %57, i8* %58, i64 %59, i8* %62, i32 %66, i8* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %55
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = call i32 @mimesetstate(%struct.TYPE_9__* %76, i32 130, %struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %74, %55
  br label %113

80:                                               ; preds = %20
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = call i32 @mimesetstate(%struct.TYPE_9__* %85, i32 129, %struct.TYPE_7__* null)
  br label %113

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @readback_part(%struct.TYPE_7__* %88, i8* %89, i64 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  switch i64 %92, label %109 [
    i64 136, label %93
    i64 135, label %93
    i64 128, label %93
    i64 0, label %102
  ]

93:                                               ; preds = %87, %87, %87
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i64, i64* %11, align 8
  br label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %5, align 8
  br label %125

102:                                              ; preds = %87
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = call i32 @mimesetstate(%struct.TYPE_9__* %104, i32 132, %struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %87, %102
  br label %113

110:                                              ; preds = %20
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %5, align 8
  br label %125

112:                                              ; preds = %20
  br label %113

113:                                              ; preds = %112, %109, %83, %79, %54, %29
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %6, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %8, align 8
  br label %17

123:                                              ; preds = %17
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %123, %110, %100
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

declare dso_local i32 @mimesetstate(%struct.TYPE_9__*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @readback_bytes(%struct.TYPE_9__*, i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @readback_part(%struct.TYPE_7__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
