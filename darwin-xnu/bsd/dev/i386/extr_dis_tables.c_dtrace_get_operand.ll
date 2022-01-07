; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dis_tables.c_dtrace_get_operand.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dis_tables.c_dtrace_get_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i64, i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i8*, i8* }

@REG_ONLY = common dso_local global i64 0, align 8
@SIZE16 = common dso_local global i64 0, align 8
@ESP_REGNO = common dso_local global i64 0, align 8
@REX_B = common dso_local global i32 0, align 4
@REX_X = common dso_local global i32 0, align 4
@EBP_REGNO = common dso_local global i64 0, align 8
@MODE_NONE = common dso_local global i8* null, align 8
@MODE_OFFSET = common dso_local global i8* null, align 8
@MODE_RIPREL = common dso_local global i8* null, align 8
@MODE_SIGNED = common dso_local global i8* null, align 8
@OPLEN = common dso_local global i32 0, align 4
@SIZE32 = common dso_local global i64 0, align 8
@dis_CONTROLREG = common dso_local global i8** null, align 8
@dis_DEBUGREG = common dso_local global i8** null, align 8
@dis_MMREG = common dso_local global i8** null, align 8
@dis_REG16 = common dso_local global i8** null, align 8
@dis_REG32 = common dso_local global i8** null, align 8
@dis_REG64 = common dso_local global i8** null, align 8
@dis_REG8 = common dso_local global i8** null, align 8
@dis_REG8_REX = common dso_local global i8** null, align 8
@dis_SEGREG = common dso_local global i8** null, align 8
@dis_TESTREG = common dso_local global i8** null, align 8
@dis_XMMREG = common dso_local global i8** null, align 8
@dis_YMMREG = common dso_local global i8** null, align 8
@dis_addr16 = common dso_local global i8*** null, align 8
@dis_addr32_mode0 = common dso_local global i8** null, align 8
@dis_addr32_mode12 = common dso_local global i8** null, align 8
@dis_addr64_mode0 = common dso_local global i8** null, align 8
@dis_addr64_mode12 = common dso_local global i8** null, align 8
@dis_scale_factor = common dso_local global i8** null, align 8
@dis_vscale_factor = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i32, i32)* @dtrace_get_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_get_operand(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, 1
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %160

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @REG_ONLY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %160

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dtrace_check_override(%struct.TYPE_8__* %41, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SIZE16, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 6
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %59, i32 130, i32 2, i32 %60)
  br label %70

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %66, i32 137, i32 1, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69, %58
  br label %160

71:                                               ; preds = %40
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ESP_REGNO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @ESP_REGNO, align 8
  %78 = add nsw i64 %77, 8
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %75, %71
  store i32 1, i32* %11, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = call i32 @dtrace_get_SIB(%struct.TYPE_8__* %81, i64* %12, i64* %13, i64* %14)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %160

88:                                               ; preds = %80
  %89 = load i64, i64* %14, align 8
  %90 = icmp ne i64 %89, 5
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91, %88
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @REX_B, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %102, 8
  store i64 %103, i64* %14, align 8
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %104, %91
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @REX_X, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i64, i64* %13, align 8
  %114 = add nsw i64 %113, 8
  store i64 %114, i64* %13, align 8
  br label %115

115:                                              ; preds = %112, %105
  br label %118

116:                                              ; preds = %75
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %116, %115
  store i32 0, i32* %15, align 4
  %119 = load i64, i64* %7, align 8
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* %15, align 4
  br label %142

122:                                              ; preds = %118
  %123 = load i64, i64* %7, align 8
  %124 = icmp eq i64 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 4, i32* %15, align 4
  br label %141

126:                                              ; preds = %122
  %127 = load i64, i64* %8, align 8
  %128 = and i64 %127, 7
  %129 = load i64, i64* @EBP_REGNO, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i64, i64* %14, align 8
  %136 = and i64 %135, 7
  %137 = load i64, i64* @EBP_REGNO, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %126
  store i32 4, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %134, %131
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %121
  %143 = load i32, i32* %15, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = icmp eq i32 %147, 4
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 134, i32 137
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %146, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %34, %39, %70, %87, %158, %159, %142
  ret void
}

declare dso_local i32 @dtrace_check_override(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dtrace_imm_opnd(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @dtrace_get_SIB(%struct.TYPE_8__*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
