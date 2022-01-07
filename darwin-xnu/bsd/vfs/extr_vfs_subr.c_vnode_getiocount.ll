; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_getiocount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_getiocount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, i32, i64, i32, i32, i64 }

@VNODE_NODEAD = common dso_local global i32 0, align 4
@VNODE_NOSUSPEND = common dso_local global i32 0, align 4
@VNODE_ALWAYS = common dso_local global i32 0, align 4
@VNODE_DRAINO = common dso_local global i32 0, align 4
@VNODE_WITHID = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4
@VBAD = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@VL_SUSPENDED = common dso_local global i32 0, align 4
@VL_DRAIN = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VL_TERMWANT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vnode getiocount\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"vnode_getiocount\00", align 1
@UNAGE_THRESHHOLD = common dso_local global i64 0, align 8
@VISDIRTY = common dso_local global i32 0, align 4
@UNAGE_DIRTYTHRESHHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_getiocount(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VNODE_NODEAD, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VNODE_NOSUSPEND, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VNODE_ALWAYS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VNODE_DRAINO, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @VNODE_WITHID, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %168, %3
  store i32 0, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VL_DEAD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VBAD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %40
  %52 = load i32, i32* @ENOENT, align 4
  store i32 %52, i32* %4, align 4
  br label %210

53:                                               ; preds = %46, %33, %30
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VL_SUSPENDED, align 4
  %58 = load i32, i32* @VL_DRAIN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VL_TERMINATE, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %169

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VL_SUSPENDED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOENT, align 4
  store i32 %76, i32* %4, align 4
  br label %210

77:                                               ; preds = %68, %65
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @VL_DRAIN, align 4
  %82 = load i32, i32* @VL_SUSPENDED, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VL_TERMINATE, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i64 (...) @current_thread()
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %169

95:                                               ; preds = %88, %77
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %169

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @VL_DRAIN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %169

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @vfs_isunmount(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @ENODEV, align 4
  store i32 %125, i32* %4, align 4
  br label %210

126:                                              ; preds = %118, %113, %110
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = call i64 @vnode_istty(%struct.TYPE_7__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @PCATCH, align 4
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %99
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = call i32 @vnode_lock_convert(%struct.TYPE_7__* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @VL_TERMINATE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %133
  %143 = load i32, i32* @VL_TERMWANT, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 8
  %152 = load i32, i32* @PVFS, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @msleep(i32* %149, i32* %151, i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %142
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %4, align 4
  br label %210

160:                                              ; preds = %142
  br label %168

161:                                              ; preds = %133
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 8
  %166 = load i32, i32* @PVFS, align 4
  %167 = call i32 @msleep(i32* %163, i32* %165, i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %168

168:                                              ; preds = %161, %160
  br label %30

169:                                              ; preds = %109, %98, %94, %64
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* @ENOENT, align 4
  store i32 %179, i32* %4, align 4
  br label %210

180:                                              ; preds = %172, %169
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load i64, i64* @UNAGE_THRESHHOLD, align 8
  %186 = icmp sge i64 %184, %185
  br i1 %186, label %200, label %187

187:                                              ; preds = %180
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @VISDIRTY, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @UNAGE_DIRTYTHRESHHOLD, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %194, %180
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 6
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = call i32 @vnode_list_remove(%struct.TYPE_7__* %203)
  br label %205

205:                                              ; preds = %200, %194, %187
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %205, %178, %158, %124, %75, %51
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i64 @vfs_isunmount(i64) #1

declare dso_local i64 @vnode_istty(%struct.TYPE_7__*) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_7__*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @vnode_list_remove(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
