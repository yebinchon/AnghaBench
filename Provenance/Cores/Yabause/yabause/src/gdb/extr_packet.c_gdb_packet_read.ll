; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gdb/extr_packet.c_gdb_packet_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gdb/extr_packet.c_gdb_packet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_packet_read(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %121, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %124

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %120 [
    i32 0, label %22
    i32 1, label %44
    i32 2, label %72
  ]

22:                                               ; preds = %14
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 36, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i8 0, i8* %32, align 8
  br label %43

33:                                               ; preds = %22
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 3, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @gdb_client_break(i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %26
  br label %120

44:                                               ; preds = %14
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 35, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 2, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  br label %71

53:                                               ; preds = %44
  %54 = load i8, i8* %8, align 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %54, i8* %62, align 1
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i8, i8* %66, align 8
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %68, %64
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 8
  br label %71

71:                                               ; preds = %53, %48
  br label %120

72:                                               ; preds = %14
  %73 = load i8, i8* %8, align 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  store i8 %73, i8* %82, align 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 2, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @sscanf(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 8
  %102 = sext i8 %101 to i32
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = call i32 @gdb_client_received(i32 %108, %struct.TYPE_4__* %109)
  br label %116

111:                                              ; preds = %87
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @gdb_client_error(i32 %114)
  br label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %72
  br label %120

120:                                              ; preds = %14, %119, %71, %43
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %10

124:                                              ; preds = %10
  ret void
}

declare dso_local i32 @gdb_client_break(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @gdb_client_received(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gdb_client_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
