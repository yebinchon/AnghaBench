; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_enter_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_enter_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i8*, %struct.TYPE_10__, %struct.nchashhead }
%struct.TYPE_10__ = type { %struct.namecache* }
%struct.namecache = type { i32, i8*, %struct.TYPE_9__, %struct.vnode*, %struct.vnode* }
%struct.TYPE_9__ = type { i64, %struct.namecache* }
%struct.nchashhead = type { %struct.namecache* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.componentname = type { i32, i8*, i32 }

@nc_disabled = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@numcache = common dso_local global i64 0, align 8
@desiredNodes = common dso_local global i64 0, align 8
@nchead = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@M_CACHE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@nc_entry = common dso_local global i32 0, align 4
@ncs_stolen = common dso_local global i32 0, align 4
@ncs_enters = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@nc_hash = common dso_local global i32 0, align 4
@nc_un = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@neghead = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ncs_negtotal = common dso_local global i64 0, align 8
@desiredNegNodes = common dso_local global i64 0, align 8
@nc_child = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.vnode*, %struct.componentname*, i8*)* @cache_enter_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_enter_locked(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, i8* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.namecache*, align 8
  %10 = alloca %struct.namecache*, align 8
  %11 = alloca %struct.nchashhead*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i64, i64* @nc_disabled, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %208

18:                                               ; preds = %4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %21 = icmp ne %struct.vnode* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 2
  %25 = call i64 @LIST_FIRST(%struct.nchashhead* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @vfs_removename(i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %208

34:                                               ; preds = %22, %18
  %35 = load i64, i64* @numcache, align 8
  %36 = load i64, i64* @desiredNodes, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.namecache*, %struct.namecache** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nchead, i32 0, i32 0), align 8
  store %struct.namecache* %39, %struct.namecache** %9, align 8
  %40 = icmp eq %struct.namecache* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.namecache*, %struct.namecache** %9, align 8
  %43 = getelementptr inbounds %struct.namecache, %struct.namecache* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @M_CACHE, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call i64 @_MALLOC_ZONE(i32 48, i32 %48, i32 %49)
  %51 = inttoptr i64 %50 to %struct.namecache*
  store %struct.namecache* %51, %struct.namecache** %9, align 8
  %52 = load i64, i64* @numcache, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @numcache, align 8
  br label %70

54:                                               ; preds = %41, %34
  %55 = call %struct.namecache* @TAILQ_FIRST(%struct.TYPE_10__* @nchead)
  store %struct.namecache* %55, %struct.namecache** %9, align 8
  %56 = load %struct.namecache*, %struct.namecache** %9, align 8
  %57 = load i32, i32* @nc_entry, align 4
  %58 = call i32 @TAILQ_REMOVE(%struct.TYPE_10__* @nchead, %struct.namecache* %56, i32 %57)
  %59 = load %struct.namecache*, %struct.namecache** %9, align 8
  %60 = getelementptr inbounds %struct.namecache, %struct.namecache* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i32, i32* @ncs_stolen, align 4
  %66 = call i32 @NCHSTAT(i32 %65)
  %67 = load %struct.namecache*, %struct.namecache** %9, align 8
  %68 = call i32 @cache_delete(%struct.namecache* %67, i32 0)
  br label %69

69:                                               ; preds = %64, %54
  br label %70

70:                                               ; preds = %69, %47
  %71 = load i32, i32* @ncs_enters, align 4
  %72 = call i32 @NCHSTAT(i32 %71)
  %73 = load %struct.vnode*, %struct.vnode** %6, align 8
  %74 = load %struct.namecache*, %struct.namecache** %9, align 8
  %75 = getelementptr inbounds %struct.namecache, %struct.namecache* %74, i32 0, i32 4
  store %struct.vnode* %73, %struct.vnode** %75, align 8
  %76 = load %struct.vnode*, %struct.vnode** %5, align 8
  %77 = load %struct.namecache*, %struct.namecache** %9, align 8
  %78 = getelementptr inbounds %struct.namecache, %struct.namecache* %77, i32 0, i32 3
  store %struct.vnode* %76, %struct.vnode** %78, align 8
  %79 = load %struct.componentname*, %struct.componentname** %7, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.namecache*, %struct.namecache** %9, align 8
  %83 = getelementptr inbounds %struct.namecache, %struct.namecache* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %70
  %87 = load %struct.componentname*, %struct.componentname** %7, align 8
  %88 = getelementptr inbounds %struct.componentname, %struct.componentname* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.componentname*, %struct.componentname** %7, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.componentname*, %struct.componentname** %7, align 8
  %94 = getelementptr inbounds %struct.componentname, %struct.componentname* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i8* @add_name_internal(i8* %89, i32 %92, i32 %95, i32 %96, i32 0)
  %98 = load %struct.namecache*, %struct.namecache** %9, align 8
  %99 = getelementptr inbounds %struct.namecache, %struct.namecache* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %104

100:                                              ; preds = %70
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.namecache*, %struct.namecache** %9, align 8
  %103 = getelementptr inbounds %struct.namecache, %struct.namecache* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %86
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = icmp ne %struct.vnode* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.vnode*, %struct.vnode** %6, align 8
  %109 = getelementptr inbounds %struct.vnode, %struct.vnode* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i8* [ %110, %107 ], [ null, %111 ]
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strlen(i8* %117)
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  store i32 %121, i32* %13, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %158

124:                                              ; preds = %120
  %125 = load %struct.namecache*, %struct.namecache** %9, align 8
  %126 = icmp ne %struct.namecache* %125, null
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  %128 = load %struct.namecache*, %struct.namecache** %9, align 8
  %129 = getelementptr inbounds %struct.namecache, %struct.namecache* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %127
  %133 = load %struct.namecache*, %struct.namecache** %9, align 8
  %134 = getelementptr inbounds %struct.namecache, %struct.namecache* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i64 @strncmp(i8* %135, i8* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %132
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @hash_string(i8* %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load %struct.namecache*, %struct.namecache** %9, align 8
  %145 = getelementptr inbounds %struct.namecache, %struct.namecache* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @vfs_removename(i8* %146)
  %148 = load i8*, i8** %12, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i8* @add_name_internal(i8* %148, i32 %149, i32 %150, i32 %151, i32 0)
  %153 = load %struct.namecache*, %struct.namecache** %9, align 8
  %154 = getelementptr inbounds %struct.namecache, %struct.namecache* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.namecache*, %struct.namecache** %9, align 8
  %157 = getelementptr inbounds %struct.namecache, %struct.namecache* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %140, %132, %127, %124, %120
  %159 = load %struct.namecache*, %struct.namecache** %9, align 8
  %160 = load i32, i32* @nc_entry, align 4
  %161 = call i32 @TAILQ_INSERT_TAIL(%struct.TYPE_10__* @nchead, %struct.namecache* %159, i32 %160)
  %162 = load %struct.vnode*, %struct.vnode** %5, align 8
  %163 = load %struct.componentname*, %struct.componentname** %7, align 8
  %164 = getelementptr inbounds %struct.componentname, %struct.componentname* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call %struct.nchashhead* @NCHHASH(%struct.vnode* %162, i32 %165)
  store %struct.nchashhead* %166, %struct.nchashhead** %11, align 8
  %167 = load %struct.nchashhead*, %struct.nchashhead** %11, align 8
  %168 = load %struct.namecache*, %struct.namecache** %9, align 8
  %169 = load i32, i32* @nc_hash, align 4
  %170 = call i32 @LIST_INSERT_HEAD(%struct.nchashhead* %167, %struct.namecache* %168, i32 %169)
  %171 = load %struct.vnode*, %struct.vnode** %6, align 8
  %172 = icmp ne %struct.vnode* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %158
  %174 = load %struct.vnode*, %struct.vnode** %6, align 8
  %175 = getelementptr inbounds %struct.vnode, %struct.vnode* %174, i32 0, i32 2
  %176 = load %struct.namecache*, %struct.namecache** %9, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nc_un, i32 0, i32 1), align 4
  %178 = call i32 @LIST_INSERT_HEAD(%struct.nchashhead* %175, %struct.namecache* %176, i32 %177)
  br label %193

179:                                              ; preds = %158
  %180 = load %struct.namecache*, %struct.namecache** %9, align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nc_un, i32 0, i32 0), align 4
  %182 = call i32 @TAILQ_INSERT_TAIL(%struct.TYPE_10__* @neghead, %struct.namecache* %180, i32 %181)
  %183 = load i64, i64* @ncs_negtotal, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* @ncs_negtotal, align 8
  %185 = load i64, i64* @ncs_negtotal, align 8
  %186 = load i64, i64* @desiredNegNodes, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = call %struct.namecache* @TAILQ_FIRST(%struct.TYPE_10__* @neghead)
  store %struct.namecache* %189, %struct.namecache** %10, align 8
  %190 = load %struct.namecache*, %struct.namecache** %10, align 8
  %191 = call i32 @cache_delete(%struct.namecache* %190, i32 1)
  br label %192

192:                                              ; preds = %188, %179
  br label %193

193:                                              ; preds = %192, %173
  %194 = load %struct.vnode*, %struct.vnode** %6, align 8
  %195 = icmp ne %struct.vnode* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load %struct.vnode*, %struct.vnode** %5, align 8
  %198 = getelementptr inbounds %struct.vnode, %struct.vnode* %197, i32 0, i32 1
  %199 = load %struct.namecache*, %struct.namecache** %9, align 8
  %200 = load i32, i32* @nc_child, align 4
  %201 = call i32 @TAILQ_INSERT_TAIL(%struct.TYPE_10__* %198, %struct.namecache* %199, i32 %200)
  br label %208

202:                                              ; preds = %193
  %203 = load %struct.vnode*, %struct.vnode** %5, align 8
  %204 = getelementptr inbounds %struct.vnode, %struct.vnode* %203, i32 0, i32 1
  %205 = load %struct.namecache*, %struct.namecache** %9, align 8
  %206 = load i32, i32* @nc_child, align 4
  %207 = call i32 @TAILQ_INSERT_HEAD(%struct.TYPE_10__* %204, %struct.namecache* %205, i32 %206)
  br label %208

208:                                              ; preds = %17, %33, %202, %196
  ret void
}

declare dso_local i64 @LIST_FIRST(%struct.nchashhead*) #1

declare dso_local i32 @vfs_removename(i8*) #1

declare dso_local i64 @_MALLOC_ZONE(i32, i32, i32) #1

declare dso_local %struct.namecache* @TAILQ_FIRST(%struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_10__*, %struct.namecache*, i32) #1

declare dso_local i32 @NCHSTAT(i32) #1

declare dso_local i32 @cache_delete(%struct.namecache*, i32) #1

declare dso_local i8* @add_name_internal(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hash_string(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.TYPE_10__*, %struct.namecache*, i32) #1

declare dso_local %struct.nchashhead* @NCHHASH(%struct.vnode*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.nchashhead*, %struct.namecache*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.TYPE_10__*, %struct.namecache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
