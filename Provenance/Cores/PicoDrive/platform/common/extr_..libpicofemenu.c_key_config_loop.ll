; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_key_config_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_key_config_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IN_MAX_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no devs, can't do config\0A\00", align 1
@IN_BINDTYPE_PLAYER12 = common dso_local global i32 0, align 4
@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4
@IN_CFG_DOES_COMBOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @key_config_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_config_loop(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %39, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IN_MAX_DEVS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @in_get_dev_name(i32 %27, i32 1, i32 0)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @lprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %237

47:                                               ; preds = %42
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %19, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 16, i32* %19, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IN_BINDTYPE_PLAYER12, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %224, %167, %155, %141, %114, %85, %77, %58
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @draw_key_config(%struct.TYPE_4__* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 0)
  %68 = call i32 @in_menu_wait(i32 135, i32* null, i32 100)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  switch i32 %69, label %167 [
    i32 128, label %70
    i32 134, label %78
    i32 133, label %86
    i32 129, label %115
    i32 131, label %142
    i32 130, label %143
    i32 132, label %155
  ]

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %70
  br label %60

78:                                               ; preds = %60
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %60

86:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %109, %86
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IN_MAX_DEVS, align 4
  %92 = add nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @IN_MAX_DEVS, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = call i32* @in_get_dev_name(i32 %104, i32 0, i32 0)
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %100
  br label %114

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %11, align 4
  br label %89

114:                                              ; preds = %107, %89
  br label %60

115:                                              ; preds = %60
  store i32 0, i32* %7, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %136, %115
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @IN_MAX_DEVS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @IN_MAX_DEVS, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 -1, i32* %11, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = call i32* @in_get_dev_name(i32 %131, i32 0, i32 0)
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %127
  br label %141

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %118

141:                                              ; preds = %134, %118
  br label %60

142:                                              ; preds = %60
  br label %237

143:                                              ; preds = %60
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %237

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %153, %148
  %150 = call i32 @in_menu_wait_any(i32* null, i32 30)
  %151 = and i32 %150, 130
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %149

154:                                              ; preds = %149
  br label %168

155:                                              ; preds = %60
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @in_unbind_all(i32 %156, i32 %164, i32 %165)
  br label %60

167:                                              ; preds = %60
  br label %60

168:                                              ; preds = %154
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @draw_key_config(%struct.TYPE_4__* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 1)
  store i32 1, i32* %15, align 4
  br label %176

176:                                              ; preds = %179, %168
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 @in_update_keycode(i32* %12, i32* %15, i32* null, i32 -1)
  store i32 %180, i32* %14, align 4
  br label %176

181:                                              ; preds = %176
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %19, align 4
  %190 = shl i32 %188, %189
  %191 = load i32, i32* %18, align 4
  %192 = call i32 @count_bound_keys(i32 %182, i32 %190, i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp sgt i32 %193, 0
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @IN_CFG_DOES_COMBOS, align 4
  %198 = call i32 @in_get_config(i32 %196, i32 %197, i32* %10)
  %199 = load i32, i32* %7, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %209

201:                                              ; preds = %181
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 0, i32* %17, align 4
  br label %209

209:                                              ; preds = %208, %205, %201, %181
  %210 = load i32, i32* %17, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %209
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %19, align 4
  %221 = shl i32 %219, %220
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @in_unbind_all(i32 %213, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %212, %209
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %19, align 4
  %234 = shl i32 %232, %233
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @in_bind_key(i32 %225, i32 %226, i32 %234, i32 %235, i32 0)
  br label %60

237:                                              ; preds = %147, %142, %45
  ret void
}

declare dso_local i32* @in_get_dev_name(i32, i32, i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @draw_key_config(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @in_unbind_all(i32, i32, i32) #1

declare dso_local i32 @in_update_keycode(i32*, i32*, i32*, i32) #1

declare dso_local i32 @count_bound_keys(i32, i32, i32) #1

declare dso_local i32 @in_get_config(i32, i32, i32*) #1

declare dso_local i32 @in_bind_key(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
