; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_emit_block_epilogue.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_emit_block_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"large cycle count: %i\0A\00", align 1
@ssp_drc_next = common dso_local global i32* null, align 8
@A_COND_AL = common dso_local global i32 0, align 4
@ssp_block_table_iram = common dso_local global i32** null, align 8
@ssp = common dso_local global %struct.TYPE_4__* null, align 8
@SSP_BLOCKTAB_IRAM_ONE = common dso_local global i32 0, align 4
@ssp_block_table = common dso_local global i32** null, align 8
@tcache_ptr = common dso_local global i8* null, align 8
@ssp_drc_next_patch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32)* @emit_block_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emit_block_epilogue(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @EL_ANOMALY, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @elprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 255, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @EOP_SUB_IMM(i32 11, i32 11, i32 0, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 1024
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %20
  %32 = load i32*, i32** @ssp_drc_next, align 8
  %33 = call i32 @emith_jump(i32* %32)
  br label %155

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @A_COND_AL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 1024
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32**, i32*** @ssp_block_table_iram, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SSP_BLOCKTAB_IRAM_ONE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %42, i64 %51
  %53 = load i32*, i32** %52, align 8
  br label %60

54:                                               ; preds = %38
  %55 = load i32**, i32*** @ssp_block_table, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i32* [ %53, %41 ], [ %59, %54 ]
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @emith_jump(i32* %65)
  br label %76

67:                                               ; preds = %60
  %68 = load i32*, i32** @ssp_drc_next, align 8
  %69 = call i32 @emith_jump(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i8*, i8** @tcache_ptr, align 8
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i8*, i8** @tcache_ptr, align 8
  %73 = sext i32 %71 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr i8, i8* %72, i64 %74
  store i8* %75, i8** @tcache_ptr, align 8
  br label %76

76:                                               ; preds = %67, %64
  br label %154

77:                                               ; preds = %34
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 1024
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32**, i32*** @ssp_block_table_iram, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SSP_BLOCKTAB_IRAM_ONE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %81, i64 %90
  %92 = load i32*, i32** %91, align 8
  br label %99

93:                                               ; preds = %77
  %94 = load i32**, i32*** @ssp_block_table, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  br label %99

99:                                               ; preds = %93, %80
  %100 = phi i32* [ %92, %80 ], [ %98, %93 ]
  store i32* %100, i32** %12, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 1024
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i32**, i32*** @ssp_block_table_iram, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SSP_BLOCKTAB_IRAM_ONE, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %104, i64 %113
  %115 = load i32*, i32** %114, align 8
  br label %122

116:                                              ; preds = %99
  %117 = load i32**, i32*** @ssp_block_table, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  br label %122

122:                                              ; preds = %116, %103
  %123 = phi i32* [ %115, %103 ], [ %121, %116 ]
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @emith_jump_cond(i32 %127, i32* %128)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32*, i32** %13, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @tr_neg_cond(i32 %134)
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @emith_jump_cond(i32 %135, i32* %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32*, i32** %12, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @ssp_drc_next_patch, align 4
  %144 = call i32 @emith_call_cond(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i32*, i32** %13, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @tr_neg_cond(i32 %149)
  %151 = load i32, i32* @ssp_drc_next_patch, align 4
  %152 = call i32 @emith_call_cond(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %145
  br label %154

154:                                              ; preds = %153, %76
  br label %155

155:                                              ; preds = %154, %31
  %156 = load i8*, i8** %9, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i8*, i8** @tcache_ptr, align 8
  store i8* %159, i8** %9, align 8
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i8*, i8** %9, align 8
  ret i8* %161
}

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @EOP_SUB_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @emith_jump(i32*) #1

declare dso_local i32 @emith_jump_cond(i32, i32*) #1

declare dso_local i32 @tr_neg_cond(i32) #1

declare dso_local i32 @emith_call_cond(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
