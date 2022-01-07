; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_lookup_args = type { %struct.vnode**, %struct.vnode*, %struct.componentname* }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i8*, i64, i32 }
%struct.proc = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@LOCKPARENT = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@DEV_DIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@RENAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_lookup_args*)* @devfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_lookup(%struct.vnop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_lookup_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.vnop_lookup_args* %0, %struct.vnop_lookup_args** %3, align 8
  %17 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %17, i32 0, i32 2
  %19 = load %struct.componentname*, %struct.componentname** %18, align 8
  store %struct.componentname* %19, %struct.componentname** %4, align 8
  %20 = load %struct.componentname*, %struct.componentname** %4, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.proc* @vfs_context_proc(i32 %23)
  store %struct.proc* %24, %struct.proc** %6, align 8
  %25 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %26 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %25, i32 0, i32 1
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %7, align 8
  %28 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %28, i32 0, i32 0
  %30 = load %struct.vnode**, %struct.vnode*** %29, align 8
  store %struct.vnode** %30, %struct.vnode*** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %31 = load %struct.componentname*, %struct.componentname** %4, align 8
  %32 = getelementptr inbounds %struct.componentname, %struct.componentname* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.componentname*, %struct.componentname** %4, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @LOCKPARENT, align 4
  %39 = load i32, i32* @WANTPARENT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %101, %1
  %43 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %43, align 8
  %44 = load %struct.vnode*, %struct.vnode** %7, align 8
  %45 = call %struct.TYPE_7__* @VTODN(%struct.vnode* %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DEV_DIR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOTDIR, align 4
  store i32 %52, i32* %2, align 4
  br label %214

53:                                               ; preds = %42
  %54 = call i32 (...) @DEVFS_LOCK()
  %55 = load %struct.componentname*, %struct.componentname** %4, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.componentname*, %struct.componentname** %4, align 8
  %59 = getelementptr inbounds %struct.componentname, %struct.componentname* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %16, align 1
  %63 = load %struct.componentname*, %struct.componentname** %4, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.componentname*, %struct.componentname** %4, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = load %struct.componentname*, %struct.componentname** %4, align 8
  %72 = getelementptr inbounds %struct.componentname, %struct.componentname* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.TYPE_8__* @dev_findname(%struct.TYPE_7__* %70, i8* %73)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %11, align 8
  %75 = load i8, i8* %16, align 1
  %76 = load %struct.componentname*, %struct.componentname** %4, align 8
  %77 = getelementptr inbounds %struct.componentname, %struct.componentname* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.componentname*, %struct.componentname** %4, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %75, i8* %82, align 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %53
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %10, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %91 = load %struct.proc*, %struct.proc** %6, align 8
  %92 = call i32 @devfs_dntovn(%struct.TYPE_7__* %89, %struct.vnode** %90, %struct.proc* %91)
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %85, %53
  %94 = call i32 (...) @DEVFS_UNLOCK()
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %42

102:                                              ; preds = %97
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %2, align 4
  br label %214

104:                                              ; preds = %93
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @ISLASTCN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @CREATE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @RENAME, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %122, label %120

120:                                              ; preds = %116, %107
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %2, align 4
  br label %214

122:                                              ; preds = %116, %112
  %123 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %123, i32* %2, align 4
  br label %214

124:                                              ; preds = %104
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @DELETE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @ISLASTCN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %136 = icmp eq %struct.TYPE_7__* %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %139 = load %struct.vnode*, %struct.vnode** %138, align 8
  %140 = icmp ne %struct.vnode* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  %144 = call i32 @vnode_put(%struct.vnode* %143)
  %145 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %145, align 8
  br label %146

146:                                              ; preds = %141, %137
  %147 = load %struct.vnode*, %struct.vnode** %7, align 8
  %148 = call i32 @vnode_get(%struct.vnode* %147)
  store i32 %148, i32* %15, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.vnode*, %struct.vnode** %7, align 8
  %152 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %151, %struct.vnode** %152, align 8
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %2, align 4
  br label %214

155:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %214

156:                                              ; preds = %128, %124
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @RENAME, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @ISLASTCN, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %171 = icmp eq %struct.TYPE_7__* %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @EISDIR, align 4
  store i32 %173, i32* %15, align 4
  br label %203

174:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %214

175:                                              ; preds = %163, %160, %156
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @ISDOTDOT, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %175
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %183 = icmp eq %struct.TYPE_7__* %181, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %180
  %185 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %186 = load %struct.vnode*, %struct.vnode** %185, align 8
  %187 = icmp ne %struct.vnode* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %190 = load %struct.vnode*, %struct.vnode** %189, align 8
  %191 = call i32 @vnode_put(%struct.vnode* %190)
  %192 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %192, align 8
  br label %193

193:                                              ; preds = %188, %184
  %194 = load %struct.vnode*, %struct.vnode** %7, align 8
  %195 = call i32 @vnode_get(%struct.vnode* %194)
  store i32 %195, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %2, align 4
  br label %214

199:                                              ; preds = %193
  %200 = load %struct.vnode*, %struct.vnode** %7, align 8
  %201 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %200, %struct.vnode** %201, align 8
  br label %202

202:                                              ; preds = %199, %180, %175
  store i32 0, i32* %2, align 4
  br label %214

203:                                              ; preds = %172
  %204 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %205 = load %struct.vnode*, %struct.vnode** %204, align 8
  %206 = icmp ne %struct.vnode* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %209 = load %struct.vnode*, %struct.vnode** %208, align 8
  %210 = call i32 @vnode_put(%struct.vnode* %209)
  %211 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %211, align 8
  br label %212

212:                                              ; preds = %207, %203
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %202, %197, %174, %155, %153, %122, %120, %102, %51
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local %struct.TYPE_7__* @VTODN(%struct.vnode*) #1

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_8__* @dev_findname(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @devfs_dntovn(%struct.TYPE_7__*, %struct.vnode**, %struct.proc*) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @vnode_get(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
