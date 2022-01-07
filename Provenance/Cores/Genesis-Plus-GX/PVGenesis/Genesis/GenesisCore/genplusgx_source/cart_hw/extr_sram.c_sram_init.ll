; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sram.c_sram_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sram.c_sram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@sram = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@rominfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"T-26013\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"T-50086\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ACLD007\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"T-50286\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"001\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"004\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SONIC & KNUCKLES\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"T-113016\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SONIC THE HEDGEHOG 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sram_init() #0 {
  %1 = call i32 @memset(%struct.TYPE_8__* @sram, i32 0, i32 4)
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 0), align 8
  %3 = icmp sgt i32 %2, 8388608
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %125

5:                                                ; preds = %0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i64 8388608
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 4), align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 4), align 8
  %9 = call i32 @memset(%struct.TYPE_8__* %8, i32 255, i32 65536)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 4), align 8
  %11 = call i32 @crc32(i32 0, %struct.TYPE_8__* %10, i32 65536)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 5), align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 8
  %13 = call i32 @READ_BYTE(%struct.TYPE_8__* %12, i32 432)
  %14 = icmp eq i32 %13, 82
  br i1 %14, label %15, label %44

15:                                               ; preds = %5
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 8
  %17 = call i32 @READ_BYTE(%struct.TYPE_8__* %16, i32 433)
  %18 = icmp eq i32 %17, 65
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 8
  %21 = call i8* @READ_WORD_LONG(%struct.TYPE_8__* %20, i32 436)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 8
  %24 = call i8* @READ_WORD_LONG(%struct.TYPE_8__* %23, i32 440)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %27 = call i32* @strstr(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2113535, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %43

30:                                               ; preds = %19
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sge i32 %37, 65536
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %30
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  %41 = add nsw i32 %40, 65535
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %29
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  br label %125

44:                                               ; preds = %15, %5
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %46 = call i32* @strstr(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2113535, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %124

49:                                               ; preds = %44
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %51 = call i32* @strstr(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2101247, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %123

54:                                               ; preds = %49
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %56 = call i32* @strstr(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2113535, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %122

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 0), align 4
  %61 = icmp eq i32 %60, 44714
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 0), align 4
  %64 = icmp eq i32 %63, 36282
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %59
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 1), align 4
  %67 = icmp eq i32 %66, 33028
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 4194305, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 4259839, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %121

69:                                               ; preds = %65, %62
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 4), align 4
  %71 = call i32* @strstr(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %75 = call i32* @strstr(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 1), align 4
  %79 = icmp eq i32 %78, 15880
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 3932161, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 3997695, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %82

81:                                               ; preds = %77
  store i32 4194305, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 4259839, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %82

82:                                               ; preds = %81, %80
  br label %120

83:                                               ; preds = %73, %69
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 4), align 4
  %85 = call i32* @strstr(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %89 = call i32* @strstr(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2113535, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %119

92:                                               ; preds = %87, %83
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 2), align 4
  %94 = call i32* @strstr(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 0), align 8
  %98 = icmp eq i32 %97, 4194304
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  store i32 2097153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2113535, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  br label %100

100:                                              ; preds = %99, %96
  br label %118

101:                                              ; preds = %92
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 3), align 4
  %103 = call i32* @strstr(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  br label %117

106:                                              ; preds = %101
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 2), align 4
  %108 = call i32* @strstr(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  br label %116

111:                                              ; preds = %106
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 0), align 8
  %113 = icmp sle i32 %112, 2097152
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 2097152, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 4
  store i32 2162687, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 3), align 4
  br label %115

115:                                              ; preds = %114, %111
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %100
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %68
  br label %122

122:                                              ; preds = %121, %58
  br label %123

123:                                              ; preds = %122, %53
  br label %124

124:                                              ; preds = %123, %48
  br label %125

125:                                              ; preds = %4, %124, %43
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @crc32(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @READ_BYTE(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @READ_WORD_LONG(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
