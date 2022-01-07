; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_mtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bond_set_mtu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @bond_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_set_mtu(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @bond_lock()
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = call i32* @ifnet_softc(%struct.ifnet* %14)
  %16 = bitcast i32* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  br label %152

32:                                               ; preds = %19
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i32 @ifbond_retain(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i32 @ifbond_wait(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = call i32* @ifnet_softc(%struct.ifnet* %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_9__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %32
  %45 = load i32, i32* @EBUSY, align 4
  store i32 %45, i32* %7, align 4
  br label %147

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = call i32 @bond_get_mtu_values(%struct.TYPE_9__* %47, i32* %9, i32* %10)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  br label %147

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %7, align 4
  br label %147

66:                                               ; preds = %61, %54
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = call i64 @ifnet_mtu(%struct.ifnet* %71)
  %73 = trunc i64 %72 to i32
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = call i64 @ifnet_mtu(%struct.ifnet* %78)
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i32 [ %76, %75 ], [ %80, %77 ]
  store i32 %82, i32* %11, align 4
  br label %97

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i32 [ %90, %89 ], [ %94, %91 ]
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %81
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = call i64 @ifnet_mtu(%struct.ifnet* %98)
  %100 = trunc i64 %99 to i32
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = call i64 @ifnet_mtu(%struct.ifnet* %106)
  %108 = trunc i64 %107 to i32
  br label %113

109:                                              ; preds = %97
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = call i32 (...) @bond_unlock()
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @bond_set_mtu_on_ports(%struct.TYPE_9__* %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @bond_set_mtu_on_ports(%struct.TYPE_9__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %118
  %130 = call i32 (...) @bond_lock()
  br label %131

131:                                              ; preds = %129, %113
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %145

141:                                              ; preds = %134
  %142 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @ifnet_set_mtu(%struct.ifnet* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %146, %64, %52, %44
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = call i32 @ifbond_signal(%struct.TYPE_9__* %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = call i32 @ifbond_release(%struct.TYPE_9__* %150)
  br label %152

152:                                              ; preds = %147, %30
  %153 = call i32 (...) @bond_unlock()
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32* @ifnet_softc(%struct.ifnet*) #1

declare dso_local i64 @ifbond_flags_if_detaching(%struct.TYPE_9__*) #1

declare dso_local i32 @ifbond_retain(%struct.TYPE_9__*) #1

declare dso_local i32 @ifbond_wait(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @bond_get_mtu_values(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i64 @ifnet_mtu(%struct.ifnet*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @bond_set_mtu_on_ports(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ifnet_set_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @ifbond_signal(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ifbond_release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
