; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_rename_args = type { %struct.componentname*, %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i8*, i32 }
%struct.vnode = type { i64 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32* }

@DEVMAXNAMESIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DEV_DIR = common dso_local global i64 0, align 8
@ISDOTDOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEVFS_UPDATE_CHANGE = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_rename_args*)* @devfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rename(%struct.vnop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_rename_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  store %struct.vnop_rename_args* %0, %struct.vnop_rename_args** %3, align 8
  %20 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %20, i32 0, i32 5
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %23, i32 0, i32 4
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %5, align 8
  %26 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %26, i32 0, i32 3
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  store %struct.vnode* %28, %struct.vnode** %6, align 8
  %29 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %29, i32 0, i32 2
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %7, align 8
  %32 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %33 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %32, i32 0, i32 1
  %34 = load %struct.componentname*, %struct.componentname** %33, align 8
  store %struct.componentname* %34, %struct.componentname** %8, align 8
  %35 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %36 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %35, i32 0, i32 0
  %37 = load %struct.componentname*, %struct.componentname** %36, align 8
  store %struct.componentname* %37, %struct.componentname** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %38 = call i32 (...) @DEVFS_LOCK()
  %39 = load %struct.componentname*, %struct.componentname** %8, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DEVMAXNAMESIZE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %45, i32* %17, align 4
  br label %234

46:                                               ; preds = %1
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = call %struct.TYPE_15__* @VTODN(%struct.vnode* %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %13, align 8
  %49 = load %struct.vnode*, %struct.vnode** %7, align 8
  %50 = call %struct.TYPE_15__* @VTODN(%struct.vnode* %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %11, align 8
  %51 = load %struct.vnode*, %struct.vnode** %6, align 8
  %52 = call %struct.TYPE_15__* @VTODN(%struct.vnode* %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %10, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = load %struct.componentname*, %struct.componentname** %9, align 8
  %55 = getelementptr inbounds %struct.componentname, %struct.componentname* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call %struct.TYPE_16__* @dev_findname(%struct.TYPE_15__* %53, i8* %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %14, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %59 = icmp eq %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %17, align 4
  br label %234

62:                                               ; preds = %46
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = icmp ne %struct.vnode* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %67 = load %struct.componentname*, %struct.componentname** %8, align 8
  %68 = getelementptr inbounds %struct.componentname, %struct.componentname* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call %struct.TYPE_16__* @dev_findname(%struct.TYPE_15__* %66, i8* %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %15, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = icmp eq %struct.TYPE_16__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOENT, align 4
  store i32 %74, i32* %17, align 4
  br label %234

75:                                               ; preds = %65
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = call %struct.TYPE_15__* @VTODN(%struct.vnode* %76)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %12, align 8
  br label %78

78:                                               ; preds = %75, %62
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DEV_DIR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %133

84:                                               ; preds = %78
  %85 = load %struct.componentname*, %struct.componentname** %9, align 8
  %86 = getelementptr inbounds %struct.componentname, %struct.componentname* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.componentname*, %struct.componentname** %9, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 46
  br i1 %96, label %128, label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.componentname*, %struct.componentname** %9, align 8
  %99 = getelementptr inbounds %struct.componentname, %struct.componentname* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ISDOTDOT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %97
  %105 = load %struct.componentname*, %struct.componentname** %8, align 8
  %106 = getelementptr inbounds %struct.componentname, %struct.componentname* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.componentname*, %struct.componentname** %8, align 8
  %111 = getelementptr inbounds %struct.componentname, %struct.componentname* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %128, label %117

117:                                              ; preds = %109, %104
  %118 = load %struct.componentname*, %struct.componentname** %8, align 8
  %119 = getelementptr inbounds %struct.componentname, %struct.componentname* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ISDOTDOT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %127 = icmp eq %struct.TYPE_15__* %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %117, %109, %97, %89
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %17, align 4
  br label %234

130:                                              ; preds = %124
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %130, %78
  %134 = load %struct.vnode*, %struct.vnode** %7, align 8
  %135 = load %struct.componentname*, %struct.componentname** %9, align 8
  %136 = getelementptr inbounds %struct.componentname, %struct.componentname* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @devfs_is_name_protected(%struct.vnode* %134, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %133
  %141 = load %struct.vnode*, %struct.vnode** %5, align 8
  %142 = load %struct.componentname*, %struct.componentname** %8, align 8
  %143 = getelementptr inbounds %struct.componentname, %struct.componentname* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @devfs_is_name_protected(%struct.vnode* %141, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140, %133
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %17, align 4
  br label %234

149:                                              ; preds = %140
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %155 = icmp ne %struct.TYPE_15__* %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %152
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %18, align 8
  br label %158

158:                                              ; preds = %166, %156
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %161 = icmp eq %struct.TYPE_15__* %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %17, align 4
  br label %234

164:                                              ; preds = %158
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %19, align 8
  br label %166

166:                                              ; preds = %164
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  store %struct.TYPE_15__* %171, %struct.TYPE_15__** %18, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %173 = icmp ne %struct.TYPE_15__* %171, %172
  br i1 %173, label %158, label %174

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %152, %149
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %177 = load i32, i32* @DEVFS_UPDATE_CHANGE, align 4
  %178 = call i32 @dn_times_now(%struct.TYPE_15__* %176, i32 %177)
  %179 = load %struct.vnode*, %struct.vnode** %6, align 8
  %180 = load %struct.vnode*, %struct.vnode** %4, align 8
  %181 = icmp eq %struct.vnode* %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %175
  %183 = load %struct.vnode*, %struct.vnode** %6, align 8
  %184 = getelementptr inbounds %struct.vnode, %struct.vnode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @VDIR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %17, align 4
  br label %234

190:                                              ; preds = %182
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %192 = call i32 @dev_free_name(%struct.TYPE_16__* %191)
  %193 = call i32 (...) @DEVFS_UNLOCK()
  store i32 0, i32* %2, align 4
  br label %237

194:                                              ; preds = %175
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %200 = icmp ne %struct.TYPE_15__* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %207, 2
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %210, i32* %17, align 4
  br label %229

211:                                              ; preds = %204, %201
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %213 = call i32 @dev_free_name(%struct.TYPE_16__* %212)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  br label %214

214:                                              ; preds = %211, %194
  %215 = load %struct.componentname*, %struct.componentname** %8, align 8
  %216 = getelementptr inbounds %struct.componentname, %struct.componentname* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %220 = call i32 @dev_add_name(i8* %217, %struct.TYPE_15__* %218, i32* null, %struct.TYPE_15__* %219, %struct.TYPE_16__** %15)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  store i32* null, i32** %222, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %228 = call i32 @dev_free_name(%struct.TYPE_16__* %227)
  br label %229

229:                                              ; preds = %214, %209
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %229, %188, %162, %147, %128, %73, %60, %44
  %235 = call i32 (...) @DEVFS_UNLOCK()
  %236 = load i32, i32* %17, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %234, %190
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_15__* @VTODN(%struct.vnode*) #1

declare dso_local %struct.TYPE_16__* @dev_findname(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @devfs_is_name_protected(%struct.vnode*, i8*) #1

declare dso_local i32 @dn_times_now(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dev_free_name(%struct.TYPE_16__*) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

declare dso_local i32 @dev_add_name(i8*, %struct.TYPE_15__*, i32*, %struct.TYPE_15__*, %struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
