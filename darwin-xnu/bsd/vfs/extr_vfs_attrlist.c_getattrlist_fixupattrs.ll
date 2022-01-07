; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlist_fixupattrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlist_fixupattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getattrlist_attrtab = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.vnode_attr = type { i32, i32 }

@getattrlist_common_tab = common dso_local global %struct.getattrlist_attrtab* null, align 8
@getattrlist_dir_tab = common dso_local global %struct.getattrlist_attrtab* null, align 8
@getattrlist_file_tab = common dso_local global %struct.getattrlist_attrtab* null, align 8
@getattrlist_common_extended_tab = common dso_local global %struct.getattrlist_attrtab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.vnode_attr*, i32)* @getattrlist_fixupattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getattrlist_fixupattrs(%struct.TYPE_3__* %0, %struct.vnode_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.vnode_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.getattrlist_attrtab*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** @getattrlist_common_tab, align 8
  store %struct.getattrlist_attrtab* %13, %struct.getattrlist_attrtab** %7, align 8
  br label %14

14:                                               ; preds = %54, %12
  %15 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %16 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %17, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %14
  %25 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %26 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %29 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %24
  %34 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %35 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %38 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %44 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = xor i64 %45, -1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %42, %33, %24, %14
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %56 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %55, i32 1
  store %struct.getattrlist_attrtab* %56, %struct.getattrlist_attrtab** %7, align 8
  %57 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %14, label %60

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %61
  %67 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** @getattrlist_dir_tab, align 8
  store %struct.getattrlist_attrtab* %67, %struct.getattrlist_attrtab** %7, align 8
  br label %68

68:                                               ; preds = %108, %66
  %69 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %70 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = and i64 %71, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %68
  %79 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %80 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %83 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %78
  %88 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %89 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %92 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %90, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %87
  %97 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %98 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = xor i64 %99, -1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %107

107:                                              ; preds = %96, %87, %78, %68
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %110 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %109, i32 1
  store %struct.getattrlist_attrtab* %110, %struct.getattrlist_attrtab** %7, align 8
  %111 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %68, label %114

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %61
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %169

120:                                              ; preds = %115
  %121 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** @getattrlist_file_tab, align 8
  store %struct.getattrlist_attrtab* %121, %struct.getattrlist_attrtab** %7, align 8
  br label %122

122:                                              ; preds = %162, %120
  %123 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %124 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %125, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %122
  %133 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %134 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %137 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %132
  %142 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %143 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %146 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %144, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %141
  %151 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %152 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = xor i64 %153, -1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = and i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  br label %161

161:                                              ; preds = %150, %141, %132, %122
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %164 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %163, i32 1
  store %struct.getattrlist_attrtab* %164, %struct.getattrlist_attrtab** %7, align 8
  %165 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %122, label %168

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %115
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %226

172:                                              ; preds = %169
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %226

177:                                              ; preds = %172
  %178 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** @getattrlist_common_extended_tab, align 8
  store %struct.getattrlist_attrtab* %178, %struct.getattrlist_attrtab** %7, align 8
  br label %179

179:                                              ; preds = %219, %177
  %180 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %181 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = and i64 %182, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %218

189:                                              ; preds = %179
  %190 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %191 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %194 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %189
  %199 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %200 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %203 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %201, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %198
  %208 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %209 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = xor i64 %210, -1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = and i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  br label %218

218:                                              ; preds = %207, %198, %189, %179
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %7, align 8
  %221 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %220, i32 1
  store %struct.getattrlist_attrtab* %221, %struct.getattrlist_attrtab** %7, align 8
  %222 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %179, label %225

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225, %172, %169
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
