; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_null_special_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_null_special_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_lookup_args = type { %struct.vnode**, i32, %struct.vnode*, %struct.componentname* }
%struct.vnode = type { i32 }
%struct.componentname = type { i8*, i32 }
%struct.mount = type { i32 }
%struct.null_mount = type { i32, %struct.vnode*, %struct.vnode*, i32, %struct.vnode*, %struct.vnode* }

@ENOENT = common dso_local global i32 0, align 4
@NULLM_CASEINSENSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_lookup_args*)* @null_special_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_special_lookup(%struct.vnop_lookup_args* %0) #0 {
  %2 = alloca %struct.vnop_lookup_args*, align 8
  %3 = alloca %struct.componentname*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.null_mount*, align 8
  %10 = alloca i32, align 4
  store %struct.vnop_lookup_args* %0, %struct.vnop_lookup_args** %2, align 8
  %11 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %12 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %11, i32 0, i32 3
  %13 = load %struct.componentname*, %struct.componentname** %12, align 8
  store %struct.componentname* %13, %struct.componentname** %3, align 8
  %14 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %15 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %14, i32 0, i32 2
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  store %struct.vnode* null, %struct.vnode** %5, align 8
  store %struct.vnode* null, %struct.vnode** %6, align 8
  store %struct.vnode* null, %struct.vnode** %7, align 8
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = call %struct.mount* @vnode_mount(%struct.vnode* %17)
  store %struct.mount* %18, %struct.mount** %8, align 8
  %19 = load %struct.mount*, %struct.mount** %8, align 8
  %20 = call %struct.null_mount* @MOUNTTONULLMOUNT(%struct.mount* %19)
  store %struct.null_mount* %20, %struct.null_mount** %9, align 8
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %24 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %23, i32 0, i32 4
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  %26 = icmp eq %struct.vnode* %22, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %1
  %28 = load %struct.componentname*, %struct.componentname** %3, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.componentname*, %struct.componentname** %3, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load %struct.componentname*, %struct.componentname** %3, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.componentname*, %struct.componentname** %3, align 8
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %57

53:                                               ; preds = %45, %35
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %54, %struct.vnode** %7, align 8
  %55 = load %struct.vnode*, %struct.vnode** %7, align 8
  %56 = call i32 @vnode_get(%struct.vnode* %55)
  store i32 %56, i32* %10, align 4
  br label %225

57:                                               ; preds = %45, %40
  br label %58

58:                                               ; preds = %57, %27
  %59 = load %struct.componentname*, %struct.componentname** %3, align 8
  %60 = getelementptr inbounds %struct.componentname, %struct.componentname* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %111

63:                                               ; preds = %58
  %64 = load %struct.componentname*, %struct.componentname** %3, align 8
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 100
  br i1 %70, label %87, label %71

71:                                               ; preds = %63
  %72 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %73 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NULLM_CASEINSENSITIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.componentname*, %struct.componentname** %3, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 68
  br i1 %85, label %87, label %111

86:                                               ; preds = %71
  br i1 false, label %87, label %111

87:                                               ; preds = %86, %78, %63
  store i32 0, i32* %10, align 4
  %88 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %89 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %88, i32 0, i32 5
  %90 = load %struct.vnode*, %struct.vnode** %89, align 8
  %91 = icmp eq %struct.vnode* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.mount*, %struct.mount** %8, align 8
  %94 = load %struct.vnode*, %struct.vnode** %4, align 8
  %95 = load %struct.componentname*, %struct.componentname** %3, align 8
  %96 = call i32 @null_getnewvnode(%struct.mount* %93, i32* null, %struct.vnode* %94, %struct.vnode** %7, %struct.componentname* %95, i32 0)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %225

100:                                              ; preds = %92
  %101 = load %struct.vnode*, %struct.vnode** %7, align 8
  %102 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %103 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %102, i32 0, i32 5
  store %struct.vnode* %101, %struct.vnode** %103, align 8
  br label %110

104:                                              ; preds = %87
  %105 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %106 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %105, i32 0, i32 5
  %107 = load %struct.vnode*, %struct.vnode** %106, align 8
  store %struct.vnode* %107, %struct.vnode** %7, align 8
  %108 = load %struct.vnode*, %struct.vnode** %7, align 8
  %109 = call i32 @vnode_get(%struct.vnode* %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %104, %100
  br label %111

111:                                              ; preds = %110, %86, %78, %58
  br label %224

112:                                              ; preds = %1
  %113 = load %struct.vnode*, %struct.vnode** %4, align 8
  %114 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %115 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %114, i32 0, i32 5
  %116 = load %struct.vnode*, %struct.vnode** %115, align 8
  %117 = icmp eq %struct.vnode* %113, %116
  br i1 %117, label %118, label %223

118:                                              ; preds = %112
  %119 = load %struct.componentname*, %struct.componentname** %3, align 8
  %120 = getelementptr inbounds %struct.componentname, %struct.componentname* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %156

126:                                              ; preds = %118
  %127 = load %struct.componentname*, %struct.componentname** %3, align 8
  %128 = getelementptr inbounds %struct.componentname, %struct.componentname* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %132, %struct.vnode** %7, align 8
  %133 = load %struct.vnode*, %struct.vnode** %7, align 8
  %134 = call i32 @vnode_get(%struct.vnode* %133)
  store i32 %134, i32* %10, align 4
  br label %225

135:                                              ; preds = %126
  %136 = load %struct.componentname*, %struct.componentname** %3, align 8
  %137 = getelementptr inbounds %struct.componentname, %struct.componentname* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load %struct.componentname*, %struct.componentname** %3, align 8
  %142 = getelementptr inbounds %struct.componentname, %struct.componentname* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 46
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %150 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %149, i32 0, i32 4
  %151 = load %struct.vnode*, %struct.vnode** %150, align 8
  store %struct.vnode* %151, %struct.vnode** %7, align 8
  %152 = load %struct.vnode*, %struct.vnode** %7, align 8
  %153 = call i32 @vnode_get(%struct.vnode* %152)
  store i32 %153, i32* %10, align 4
  br label %225

154:                                              ; preds = %140, %135
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %118
  %157 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %158 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %157, i32 0, i32 1
  %159 = load %struct.vnode*, %struct.vnode** %158, align 8
  %160 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %161 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @vnode_getwithvid(%struct.vnode* %159, i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %225

167:                                              ; preds = %156
  %168 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %169 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %168, i32 0, i32 1
  %170 = load %struct.vnode*, %struct.vnode** %169, align 8
  %171 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %172 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @null_get_lowerparent(%struct.vnode* %170, %struct.vnode** %5, i32 %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %218

177:                                              ; preds = %167
  %178 = load %struct.vnode*, %struct.vnode** %5, align 8
  %179 = load %struct.componentname*, %struct.componentname** %3, align 8
  %180 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %181 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @VNOP_LOOKUP(%struct.vnode* %178, %struct.vnode** %6, %struct.componentname* %179, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load %struct.vnode*, %struct.vnode** %5, align 8
  %185 = call i32 @vnode_put(%struct.vnode* %184)
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %217

188:                                              ; preds = %177
  %189 = load %struct.vnode*, %struct.vnode** %6, align 8
  %190 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %191 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %190, i32 0, i32 1
  %192 = load %struct.vnode*, %struct.vnode** %191, align 8
  %193 = icmp eq %struct.vnode* %189, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %188
  %195 = load %struct.mount*, %struct.mount** %8, align 8
  %196 = load %struct.vnode*, %struct.vnode** %6, align 8
  %197 = load %struct.vnode*, %struct.vnode** %4, align 8
  %198 = load %struct.componentname*, %struct.componentname** %3, align 8
  %199 = call i32 @null_nodeget(%struct.mount* %195, %struct.vnode* %196, %struct.vnode* %197, %struct.vnode** %7, %struct.componentname* %198, i32 0)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %204 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %203, i32 0, i32 2
  %205 = load %struct.vnode*, %struct.vnode** %204, align 8
  %206 = icmp eq %struct.vnode* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.vnode*, %struct.vnode** %7, align 8
  %209 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %210 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %209, i32 0, i32 2
  store %struct.vnode* %208, %struct.vnode** %210, align 8
  br label %211

211:                                              ; preds = %207, %202, %194
  br label %214

212:                                              ; preds = %188
  %213 = load i32, i32* @ENOENT, align 4
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %212, %211
  %215 = load %struct.vnode*, %struct.vnode** %6, align 8
  %216 = call i32 @vnode_put(%struct.vnode* %215)
  br label %217

217:                                              ; preds = %214, %177
  br label %218

218:                                              ; preds = %217, %167
  %219 = load %struct.null_mount*, %struct.null_mount** %9, align 8
  %220 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %219, i32 0, i32 1
  %221 = load %struct.vnode*, %struct.vnode** %220, align 8
  %222 = call i32 @vnode_put(%struct.vnode* %221)
  br label %223

223:                                              ; preds = %218, %112
  br label %224

224:                                              ; preds = %223, %111
  br label %225

225:                                              ; preds = %224, %166, %148, %131, %99, %53
  %226 = load i32, i32* %10, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.vnode*, %struct.vnode** %7, align 8
  %230 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %231 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %230, i32 0, i32 0
  %232 = load %struct.vnode**, %struct.vnode*** %231, align 8
  store %struct.vnode* %229, %struct.vnode** %232, align 8
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %10, align 4
  ret i32 %234
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.null_mount* @MOUNTTONULLMOUNT(%struct.mount*) #1

declare dso_local i32 @vnode_get(%struct.vnode*) #1

declare dso_local i32 @null_getnewvnode(%struct.mount*, i32*, %struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @vnode_getwithvid(%struct.vnode*, i32) #1

declare dso_local i32 @null_get_lowerparent(%struct.vnode*, %struct.vnode**, i32) #1

declare dso_local i32 @VNOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @null_nodeget(%struct.mount*, %struct.vnode*, %struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
