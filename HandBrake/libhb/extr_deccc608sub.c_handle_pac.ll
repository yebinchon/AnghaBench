; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_pac.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32, i32 }

@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AChannel correction, now %d\0A\00", align 1
@cc_channel = common dso_local global i32 0, align 4
@rowdata = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\0DPAC: %02X %02X\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\0DThis is not a PAC!!!!!\0A\00", align 1
@pac2_attribs = common dso_local global i8*** null, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"  --  Position: %d:%d, color: %s,  font: %s\0A\00", align 1
@color_text = common dso_local global i32** null, align 8
@font_text = common dso_local global i32* null, align 8
@MODE_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.s_write*)* @handle_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pac(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  %10 = load %struct.s_write*, %struct.s_write** %6, align 8
  %11 = getelementptr inbounds %struct.s_write, %struct.s_write* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.s_write*, %struct.s_write** %6, align 8
  %16 = getelementptr inbounds %struct.s_write, %struct.s_write* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %16, align 8
  %19 = load i64, i64* @debug_608, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.s_write*, %struct.s_write** %6, align 8
  %23 = getelementptr inbounds %struct.s_write, %struct.s_write* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %14
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.s_write*, %struct.s_write** %6, align 8
  %29 = getelementptr inbounds %struct.s_write, %struct.s_write* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.s_write*, %struct.s_write** %6, align 8
  %32 = getelementptr inbounds %struct.s_write, %struct.s_write* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.s_write*, %struct.s_write** %6, align 8
  %36 = getelementptr inbounds %struct.s_write, %struct.s_write* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @cc_channel, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %202

43:                                               ; preds = %27
  %44 = load i32*, i32** @rowdata, align 8
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 1
  %48 = and i32 %47, 14
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 5
  %52 = and i32 %51, 1
  %53 = or i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %44, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i64, i64* @debug_608, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %59, %43
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 64
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sle i32 %71, 95
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 %75, 64
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %5, align 1
  br label %98

78:                                               ; preds = %69, %65
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sge i32 %80, 96
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sle i32 %84, 127
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, 96
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %5, align 1
  br label %97

91:                                               ; preds = %82, %78
  %92 = load i64, i64* @debug_608, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %202

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i8***, i8**** @pac2_attribs, align 8
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8**, i8*** %99, i64 %101
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.s_write*, %struct.s_write** %6, align 8
  %108 = getelementptr inbounds %struct.s_write, %struct.s_write* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i64 %106, i64* %110, align 8
  %111 = load i8***, i8**** @pac2_attribs, align 8
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds i8**, i8*** %111, i64 %113
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.s_write*, %struct.s_write** %6, align 8
  %120 = getelementptr inbounds %struct.s_write, %struct.s_write* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i64 %118, i64* %122, align 8
  %123 = load i8***, i8**** @pac2_attribs, align 8
  %124 = load i8, i8* %5, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i8**, i8*** %123, i64 %125
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i64, i64* @debug_608, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %98
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32**, i32*** @color_text, align 8
  %137 = load %struct.s_write*, %struct.s_write** %6, align 8
  %138 = getelementptr inbounds %struct.s_write, %struct.s_write* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32*, i32** %136, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @font_text, align 8
  %147 = load %struct.s_write*, %struct.s_write** %6, align 8
  %148 = getelementptr inbounds %struct.s_write, %struct.s_write* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135, i32 %145, i32 %153)
  br label %155

155:                                              ; preds = %133, %98
  %156 = load %struct.s_write*, %struct.s_write** %6, align 8
  %157 = getelementptr inbounds %struct.s_write, %struct.s_write* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %164 [
    i32 130, label %161
    i32 129, label %162
    i32 128, label %163
  ]

161:                                              ; preds = %155
  store i32 2, i32* %9, align 4
  br label %165

162:                                              ; preds = %155
  store i32 3, i32* %9, align 4
  br label %165

163:                                              ; preds = %155
  store i32 4, i32* %9, align 4
  br label %165

164:                                              ; preds = %155
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %164, %163, %162, %161
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = load %struct.s_write*, %struct.s_write** %6, align 8
  %173 = getelementptr inbounds %struct.s_write, %struct.s_write* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MODE_TEXT, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %171
  %180 = load %struct.s_write*, %struct.s_write** %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i32 @move_roll_up(%struct.s_write* %180, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load %struct.s_write*, %struct.s_write** %6, align 8
  %187 = getelementptr inbounds %struct.s_write, %struct.s_write* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 4
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %179, %171
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load %struct.s_write*, %struct.s_write** %6, align 8
  %194 = getelementptr inbounds %struct.s_write, %struct.s_write* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 5
  store i32 %192, i32* %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.s_write*, %struct.s_write** %6, align 8
  %199 = getelementptr inbounds %struct.s_write, %struct.s_write* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 6
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %190, %96, %42
  ret void
}

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @move_roll_up(%struct.s_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
