; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i8* }

@eeprom_i2c = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@STAND_BY = common dso_local global i32 0, align 4
@sram = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GAME_CNT = common dso_local global i32 0, align 4
@rominfo = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@database = common dso_local global %struct.TYPE_19__* null, align 8
@cart = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@eeprom_i2c_read_byte = common dso_local global i8* null, align 8
@m68k = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@eeprom_i2c_read_word = common dso_local global i8* null, align 8
@eeprom_i2c_write_byte = common dso_local global i8* null, align 8
@eeprom_i2c_write_word = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_i2c_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @memset(%struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 2), align 4
  %3 = load i32, i32* @STAND_BY, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 0), align 8
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @GAME_CNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rominfo, i32 0, i32 1), align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** @database, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @strstr(i32 %9, i32 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** @database, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** @database, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rominfo, i32 0, i32 0), align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26, %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 1), align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** @database, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = call i32 @memcpy(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4), i32* %40, i32 4)
  %42 = load i32, i32* @GAME_CNT, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %35, %26
  br label %44

44:                                               ; preds = %43, %8
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %4

47:                                               ; preds = %4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 0), align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 4), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cart, i32 0, i32 0), align 4
  %55 = call i32 @READ_BYTE(i32 %54, i32 434)
  %56 = icmp eq i32 %55, 232
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 2), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 3), align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %53
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** @database, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 9
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = call i32 @memcpy(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4), i32* %65, i32 4)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %50, %47
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sram, i32 0, i32 0), align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %135

71:                                               ; preds = %68
  %72 = load i8*, i8** @eeprom_i2c_read_byte, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 0), align 4
  %75 = ashr i32 %74, 16
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i8* %72, i8** %78, align 8
  %79 = load i8*, i8** @eeprom_i2c_read_word, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 0), align 4
  %82 = ashr i32 %81, 16
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i8* %79, i8** %85, align 8
  %86 = load i8*, i8** @eeprom_i2c_read_byte, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 1), align 4
  %89 = ashr i32 %88, 16
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  store i8* %86, i8** %92, align 8
  %93 = load i8*, i8** @eeprom_i2c_read_word, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 1), align 4
  %96 = ashr i32 %95, 16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  store i8* %93, i8** %99, align 8
  %100 = load i8*, i8** @eeprom_i2c_write_byte, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 2), align 4
  %103 = ashr i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i8* %100, i8** %106, align 8
  %107 = load i32, i32* @eeprom_i2c_write_word, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m68k, i32 0, i32 0), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 2), align 4
  %110 = ashr i32 %109, 16
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 8
  %114 = load i8*, i8** @eeprom_i2c_read_byte, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zbank_memory_map, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 0), align 4
  %117 = ashr i32 %116, 16
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  store i8* %114, i8** %120, align 8
  %121 = load i8*, i8** @eeprom_i2c_read_byte, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zbank_memory_map, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 1), align 4
  %124 = ashr i32 %123, 16
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  store i8* %121, i8** %127, align 8
  %128 = load i8*, i8** @eeprom_i2c_write_byte, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zbank_memory_map, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @eeprom_i2c, i32 0, i32 4, i32 2), align 4
  %131 = ashr i32 %130, 16
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i8* %128, i8** %134, align 8
  br label %135

135:                                              ; preds = %71, %68
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32* @strstr(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @READ_BYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
