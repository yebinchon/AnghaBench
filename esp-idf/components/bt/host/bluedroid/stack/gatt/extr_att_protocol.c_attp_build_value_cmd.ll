; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_value_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_value_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_RSP_READ_BY_TYPE = common dso_local global i32 0, align 4
@GATT_RSP_READ_BLOB = common dso_local global i32 0, align 4
@GATT_RSP_READ = common dso_local global i32 0, align 4
@GATT_REQ_PREPARE_WRITE = common dso_local global i32 0, align 4
@GATT_RSP_PREPARE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"attribute value too long, to be truncated to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @attp_build_value_cmd(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 8, %19
  %21 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @osi_malloc(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %13, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %130

28:                                               ; preds = %6
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 1
  %31 = bitcast %struct.TYPE_3__* %30 to i32*
  %32 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %15, align 8
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @UINT8_TO_STREAM(i32* %35, i32 %36)
  %38 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @GATT_RSP_READ_BY_TYPE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %28
  %47 = load i32*, i32** %14, align 8
  store i32* %47, i32** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %16, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @UINT8_TO_STREAM(i32* %50, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %46, %28
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @GATT_RSP_READ_BLOB, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @GATT_RSP_READ, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @UINT16_TO_STREAM(i32* %66, i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %61, %57
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @GATT_REQ_PREPARE_WRITE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @GATT_RSP_PREPARE_WRITE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77, %73
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @UINT16_TO_STREAM(i32* %82, i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %77
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %129

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @GATT_RSP_READ_BY_TYPE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 2
  %115 = load i32*, i32** %17, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %103
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @GATT_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %95
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @ARRAY_TO_STREAM(i32* %120, i32* %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %92, %89
  br label %130

130:                                              ; preds = %129, %6
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  ret %struct.TYPE_3__* %131
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @GATT_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
