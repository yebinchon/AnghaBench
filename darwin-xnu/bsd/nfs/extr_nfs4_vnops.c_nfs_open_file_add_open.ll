; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_add_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_add_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_open_file_add_open(%struct.nfs_open_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %9, i32 0, i32 0
  %11 = call i32 @lck_mtx_lock(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %13, i32 0, i32 21
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %18, i32 0, i32 20
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %124

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %33, i32 0, i32 19
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %57

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %32
  br label %123

58:                                               ; preds = %24
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %68 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %91

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %86 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %85, i32 0, i32 14
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %80
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %66
  br label %122

92:                                               ; preds = %58
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %98 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %121

101:                                              ; preds = %92
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %107 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %120

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %116 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %96
  br label %122

122:                                              ; preds = %121, %91
  br label %123

123:                                              ; preds = %122, %57
  br label %224

124:                                              ; preds = %4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %134 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %157

137:                                              ; preds = %128
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %143 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %156

146:                                              ; preds = %137
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %152 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %132
  br label %223

158:                                              ; preds = %124
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %192

162:                                              ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %168 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %191

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %177 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %190

180:                                              ; preds = %171
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %186 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %180
  br label %190

190:                                              ; preds = %189, %175
  br label %191

191:                                              ; preds = %190, %166
  br label %222

192:                                              ; preds = %158
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %198 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %221

201:                                              ; preds = %192
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %207 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %220

210:                                              ; preds = %201
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %216 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %214, %210
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220, %196
  br label %222

222:                                              ; preds = %221, %191
  br label %223

223:                                              ; preds = %222, %157
  br label %224

224:                                              ; preds = %223, %123
  %225 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %226 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.nfs_open_file*, %struct.nfs_open_file** %5, align 8
  %230 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %229, i32 0, i32 0
  %231 = call i32 @lck_mtx_unlock(i32* %230)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
