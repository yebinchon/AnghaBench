; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_load_roms.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_load_roms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@emuos_mode = common dso_local global i32 0, align 4
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@Atari800_os_version = common dso_local global i32 0, align 4
@MEMORY_ram_size = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i32 0, align 4
@SYSROM_roms = common dso_local global %struct.TYPE_2__* null, align 8
@MEMORY_os = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MEMORY_basic = common dso_local global i32 0, align 4
@MEMORY_have_basic = common dso_local global i32 0, align 4
@Atari800_builtin_basic = common dso_local global i32 0, align 4
@Atari800_builtin_game = common dso_local global i32 0, align 4
@MEMORY_xegame = common dso_local global i32 0, align 4
@MEMORY_xe_bank = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_roms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_roms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @Atari800_machine_type, align 8
  %5 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @emuos_mode, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i64, i64* @Atari800_machine_type, align 8
  %12 = load i64, i64* @Atari800_MACHINE_800, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 2048, i32 8192
  %16 = call i32 @COPY_EMUOS(i32 %15)
  store i32 -1, i32* @Atari800_os_version, align 4
  br label %115

17:                                               ; preds = %7, %0
  %18 = load i64, i64* @Atari800_machine_type, align 8
  %19 = load i32, i32* @MEMORY_ram_size, align 4
  %20 = load i32, i32* @Atari800_tv_mode, align 4
  %21 = call i32 @SYSROM_ChooseROMs(i64 %18, i32 %19, i32 %20, i32* @Atari800_os_version, i32* %2, i32* %3)
  %22 = load i32, i32* @Atari800_os_version, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %26 = load i32, i32* @Atari800_os_version, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MEMORY_os, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %33 = load i32, i32* @Atari800_os_version, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Atari800_LoadImage(i32 %30, i32 %31, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %24, %17
  store i32 -1, i32* @Atari800_os_version, align 4
  %41 = load i64, i64* @Atari800_machine_type, align 8
  %42 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* @emuos_mode, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* @Atari800_machine_type, align 8
  %49 = load i64, i64* @Atari800_MACHINE_800, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2048, i32 8192
  %53 = call i32 @COPY_EMUOS(i32 %52)
  br label %56

54:                                               ; preds = %44, %40
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %1, align 4
  br label %117

56:                                               ; preds = %47
  br label %114

57:                                               ; preds = %24
  %58 = load i64, i64* @Atari800_machine_type, align 8
  %59 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MEMORY_basic, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @Atari800_LoadImage(i32 %70, i32 %71, i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %64, %61
  %81 = phi i1 [ false, %61 ], [ %79, %64 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* @MEMORY_have_basic, align 4
  %83 = load i32, i32* @MEMORY_have_basic, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* @Atari800_builtin_basic, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* @Atari800_builtin_game, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %109, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MEMORY_xegame, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @Atari800_LoadImage(i32 %99, i32 %100, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %93, %90
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* @Atari800_builtin_game, align 4
  br label %111

111:                                              ; preds = %109, %93
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113, %56
  br label %115

115:                                              ; preds = %114, %10
  store i64 0, i64* @MEMORY_xe_bank, align 8
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %1, align 4
  br label %117

117:                                              ; preds = %115, %54
  %118 = load i32, i32* %1, align 4
  ret i32 %118
}

declare dso_local i32 @COPY_EMUOS(i32) #1

declare dso_local i32 @SYSROM_ChooseROMs(i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @Atari800_LoadImage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
