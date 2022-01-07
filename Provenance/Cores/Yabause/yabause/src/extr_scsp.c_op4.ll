; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@ATTACK = common dso_local global i64 0, align 8
@attack_rate_table = common dso_local global i32** null, align 8
@DECAY1 = common dso_local global i64 0, align 8
@DECAY2 = common dso_local global i64 0, align 8
@RELEASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op4(%struct.Slot* %0) #0 {
  %2 = alloca %struct.Slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %2, align 8
  %7 = load %struct.Slot*, %struct.Slot** %2, align 8
  %8 = getelementptr inbounds %struct.Slot, %struct.Slot* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 3
  store i32 %11, i32* %3, align 4
  %12 = load %struct.Slot*, %struct.Slot** %2, align 8
  %13 = getelementptr inbounds %struct.Slot, %struct.Slot* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 959
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %147

18:                                               ; preds = %1
  %19 = load %struct.Slot*, %struct.Slot** %2, align 8
  %20 = getelementptr inbounds %struct.Slot, %struct.Slot* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATTACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %18
  %26 = load %struct.Slot*, %struct.Slot** %2, align 8
  %27 = load %struct.Slot*, %struct.Slot** %2, align 8
  %28 = getelementptr inbounds %struct.Slot, %struct.Slot* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_rate(%struct.Slot* %26, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.Slot*, %struct.Slot** %2, align 8
  %34 = getelementptr inbounds %struct.Slot, %struct.Slot* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.Slot*, %struct.Slot** %2, align 8
  %38 = call i32 @need_envelope_step(i32 %32, i32 %36, %struct.Slot* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 48
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32**, i32*** @attack_rate_table, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %63

52:                                               ; preds = %41
  %53 = load i32**, i32*** @attack_rate_table, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 48
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %52, %44
  %64 = load %struct.Slot*, %struct.Slot** %2, align 8
  %65 = getelementptr inbounds %struct.Slot, %struct.Slot* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = load %struct.Slot*, %struct.Slot** %2, align 8
  %72 = getelementptr inbounds %struct.Slot, %struct.Slot* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load %struct.Slot*, %struct.Slot** %2, align 8
  %77 = getelementptr inbounds %struct.Slot, %struct.Slot* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load %struct.Slot*, %struct.Slot** %2, align 8
  %83 = load i64, i64* @DECAY1, align 8
  %84 = call i32 @change_envelope_state(%struct.Slot* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %63
  br label %86

86:                                               ; preds = %85, %25
  br label %147

87:                                               ; preds = %18
  %88 = load %struct.Slot*, %struct.Slot** %2, align 8
  %89 = getelementptr inbounds %struct.Slot, %struct.Slot* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DECAY1, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %87
  %95 = load %struct.Slot*, %struct.Slot** %2, align 8
  %96 = load %struct.Slot*, %struct.Slot** %2, align 8
  %97 = getelementptr inbounds %struct.Slot, %struct.Slot* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @do_decay(%struct.Slot* %95, i32 %99)
  %101 = load %struct.Slot*, %struct.Slot** %2, align 8
  %102 = getelementptr inbounds %struct.Slot, %struct.Slot* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 5
  %106 = load %struct.Slot*, %struct.Slot** %2, align 8
  %107 = getelementptr inbounds %struct.Slot, %struct.Slot* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %105, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %94
  %112 = load %struct.Slot*, %struct.Slot** %2, align 8
  %113 = load i64, i64* @DECAY2, align 8
  %114 = call i32 @change_envelope_state(%struct.Slot* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %94
  br label %146

116:                                              ; preds = %87
  %117 = load %struct.Slot*, %struct.Slot** %2, align 8
  %118 = getelementptr inbounds %struct.Slot, %struct.Slot* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DECAY2, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.Slot*, %struct.Slot** %2, align 8
  %125 = load %struct.Slot*, %struct.Slot** %2, align 8
  %126 = getelementptr inbounds %struct.Slot, %struct.Slot* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @do_decay(%struct.Slot* %124, i32 %128)
  br label %145

130:                                              ; preds = %116
  %131 = load %struct.Slot*, %struct.Slot** %2, align 8
  %132 = getelementptr inbounds %struct.Slot, %struct.Slot* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @RELEASE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.Slot*, %struct.Slot** %2, align 8
  %139 = load %struct.Slot*, %struct.Slot** %2, align 8
  %140 = getelementptr inbounds %struct.Slot, %struct.Slot* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @do_decay(%struct.Slot* %138, i32 %142)
  br label %144

144:                                              ; preds = %137, %130
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %115
  br label %147

147:                                              ; preds = %17, %146, %86
  ret void
}

declare dso_local i32 @get_rate(%struct.Slot*, i32) #1

declare dso_local i32 @need_envelope_step(i32, i32, %struct.Slot*) #1

declare dso_local i32 @change_envelope_state(%struct.Slot*, i64) #1

declare dso_local i32 @do_decay(%struct.Slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
